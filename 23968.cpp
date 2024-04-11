#include <iostream>
#include <vector>
using namespace std;

int main() {
    int n, k;
    cin >> n >> k;

    vector<int> arr(n);
    for (int i = 0; i < n; ++i) {
        cin >> arr[i];
    }

    int cnt = 0;
    bool swapped = true;
    for (int i = 0; i < n - 1 && swapped; ++i) {
        swapped = false;
        for (int j = 0; j < n - i - 1; ++j) {
            if (arr[j] > arr[j + 1]) {
                swap(arr[j], arr[j + 1]);
                ++cnt;
                if (cnt == k) {
                    cout << arr[j] << " " << arr[j + 1] << endl;
                    return 0;
                }
                swapped = true;
            }
        }
    }

    if (cnt < k) {
        cout << "-1" << endl;
    }

    return 0;
}