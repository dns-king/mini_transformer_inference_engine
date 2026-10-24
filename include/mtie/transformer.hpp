#pragma once
#include <cstdint>
#include <filesystem>
#include <random>
#include <string>
#include <vector>

namespace mtie {
constexpr uint32_t kFormatVersion = 1;
struct Config { uint32_t vocab_size{}, d_model{}, n_heads{}, n_layers{}, ff_dim{}, max_seq_len{}; };
struct Tensor { std::vector<float> data; size_t rows{}, cols{}; Tensor()=default; Tensor(size_t r,size_t c,float x=0):data(r*c,x),rows(r),cols(c){} float& operator()(size_t r,size_t c){return data[r*cols+c];} float operator()(size_t r,size_t c) const{return data[r*cols+c];} };
struct LayerWeights { Tensor wq,wk,wv,wo,w1,w2; std::vector<float> ln1_g,ln1_b,ln2_g,ln2_b; };
struct ModelWeights { Config config; Tensor token_embedding, position_embedding, final_projection; std::vector<float> final_ln_g,final_ln_b; std::vector<LayerWeights> layers; size_t parameter_count() const; size_t bytes() const; };
class Tokenizer { public: std::vector<std::string> tokens; uint32_t unk_id=0; static Tokenizer load(const std::filesystem::path&); void save(const std::filesystem::path&) const; std::vector<uint32_t> encode(const std::string&) const; std::string decode(const std::vector<uint32_t>&) const; };
void save_weights(const ModelWeights&, const std::filesystem::path&);
ModelWeights load_weights(const std::filesystem::path&);
ModelWeights make_deterministic_demo();
Tokenizer make_demo_tokenizer();
std::vector<float> stable_softmax(const std::vector<float>&);
void layer_norm(std::vector<float>& x, const std::vector<float>& gain, const std::vector<float>& bias);
class Transformer { public: explicit Transformer(ModelWeights weights); std::vector<float> logits(const std::vector<uint32_t>& tokens) const; std::vector<uint32_t> generate(std::vector<uint32_t> prompt,size_t new_tokens,float temperature,int top_k,uint64_t seed,std::vector<double>* token_ms=nullptr) const; private: ModelWeights w_; };
uint32_t sample(const std::vector<float>& logits,float temperature,int top_k,std::mt19937_64& rng);
} // namespace mtie
