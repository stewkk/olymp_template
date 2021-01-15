#include <bits/stdc++.h>

using namespace std;

using ll = long long;

ll rnd(ll a, ll b){
    return a + rand() % (b - a + 1);
}

int main() {
    srand(time(0));
    int n = rnd(1, 5);
    cout << n << endl;
    for (int i = 0; i < n; ++i) {
        cout << rnd(1, 5) << ' ' << (rnd(1, 100) > 5 ? rnd(1, 5) : -1) << endl;
    }
    return 0;
}
