#include "mtie/transformer.hpp"
#include <filesystem>
#include <iostream>
int main(int argc,char** argv){try{std::filesystem::path out=argc>1?argv[1]:"demo";std::filesystem::create_directories(out);mtie::save_weights(mtie::make_deterministic_demo(),out/"demo.mtie");mtie::make_demo_tokenizer().save(out/"demo.tok");std::cout<<"Created "<<(out/"demo.mtie").string()<<" and tokenizer.\n";}catch(const std::exception& e){std::cerr<<"error: "<<e.what()<<'\n';return 1;}}
