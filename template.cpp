#include <iostream>
#include <iomanip>
#include <vector>
#include <valarray>
#include <map>
#include <set>
#include <list>
#include <queue>
#include <stack>
#include <bitset>
#include <utility>
#include <numeric>
#include <algorithm>
#include <functional>
#include <complex>
#include <string>
#include <sstream>

#include <cstdio>
#include <cstdlib>
#include <cctype>
#include <cstring>
#include <cassert>

#include <unordered_set>
#include <unordered_map>
#include <random>
#include <thread>
#include <chrono>

using namespace std;

#define int long long
#define let const auto
#define var auto

#define all(c) c.begin(), c.end()
#define repeat(i, n) for (int i = 0; i < static_cast<int>(n); i++)
#define debug(x) #x << "=" << (x)

#ifdef DEBUG
#define dump(x) std::cerr << debug(x) << " (L:" << __LINE__ << ")" << std::endl
#else
#define dump(x) 
#endif

typedef complex<double> point;

template <typename T>
ostream &operator<<(ostream &os, const vector<T> &v) {
    os << "{";
    for(auto it = v.begin(); it != v.end(); ++it){
        if(it != v.begin()){
            os << ",";
        }
        os << *it;
    }
    return os << "}";
}
template<typename T>
void isort(std::vector<T>& v, std::function<bool(T,T)> comp=less<T>()){
    sort(v.begin(), v.end(), comp);
}
template<typename T>
std::vector<T> sort(std::vector<T> v, std::function<bool(T,T)> comp=less<T>()){
    isort(v);
    return v;
}
template<typename T1, typename T2>
std::vector<T2> rmap(const std::vector<T1>& v, std::function<T2(T1)> f){
    std::vector<T2> t; t.reserve(v.size());
    for(const auto& i: v) t.push_back(f(i));
    return t;
}
std::vector<std::string> split(std::string str, char delim){
    std::vector<std::string> res;
    size_t current = 0, found;
    while((found = str.find_first_of(delim, current)) != std::string::npos){
        res.push_back(std::string(str, current, found - current));
        current = found + 1;
    }
    res.push_back(std::string(str, current, str.size() - current));
    return res;
}
string join(const std::vector<string>& v, string delim){
    string ret = "";
    for(auto it = v.begin(); it != v.end(); ++it){
        if(it != v.begin()){
            ret += delim;
        }
        ret += *it;
    }
    return ret;
}



signed main() {
    ios::sync_with_stdio(false);
    cin.tie(0);

    return 0;
}
