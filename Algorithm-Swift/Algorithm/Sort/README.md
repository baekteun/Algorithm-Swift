#  Bubble Sort

## 특징
  - 장점 
    - 구현이 매우 간단하다.
  - 단점
    - 순서에 맞지 않은 요소를 인접한 요소와 교환한다.
    - 하나의 요소가 가장 왼쪽에서 가장 오른쪽으로 이동하기 위해서는 배열에서 다른 모든 요소들과 교환되어야 한다.
    - 특히 특정 요소가 최종 정렬 위치에 이미 있는 경우라도 교환하는 일이 일어난다.


## 시간 복잡도
- O(N^2)

***

# Selection Sort
- 원소를 넣을 위치는 이미 정해져 있고, 어떤 원소를 넣을지 선택하는 정렬 알고리즘.
  - 첫번째에 배열중 최솟값을 넣는다.
  - 두번째에 남은 배열중 최솟값을 넣는다.
  - 세번째에 ...

## 특징
- 장점
  - 자료 이동 횟수가 미리 결정된다.
- 단점
  - 안정성을 만족하지 않는다.
  - 값이 같은 원소가 있을 경우 상대적인 위치가 변경될 수 있다.

## 시간 복잡도
- O(N^2)

***

# Insertion Sort
- 자료 배열의 모든 요소를 앞에서부터 차례대로 이미 정렬된 배열 부분과 비교하여, 자신의 위치를 찾아 삽입함으로써 정렬하는 정렬 알고리즘.
- 매 순서마다 해당 원소를 삽입할 수 있는 위치를 찾아 해당 위치에 넣는다.

## 특징
- 장점
  - 안정한 정렬 방법.
  - 레코드 수가 적을 수록 알고리즘 자체가 매우 간단하여 다른 복잡한 정렬 알고리즘보다 유리할 수 있다.
  - 대부분의 레코드 이미 정렬되어 있는 경우 매우 효율적일 수 있다.
- 단점
  - 비교적 많은 레코드 이동을 포함한다.
  - 레코드 수가 많고, 레코드 크기가 클 경우에 적합하지 않다.

## 시간 복잡도
- 최선
  - O(N)
- 최악 
  - O(N^2)

***

# Quick Sort
- 문제를 작은 2개의 문제로 분리하고 각각을 해결한 다음, 결과를 모아서 원래의 문제를 해결하는 전략이다.

## 정렬 과정(오름차순)
1. 리스트 안에 있는 한 원소를 선택한다. 이 값은 pivot이라 한다.
2. pivot을 기준으로 작은 값은 왼쪽으로, 큰 값은 오른쪽으로 옮긴다.
3. pivot을 제외한 왼쪽 리스트와 오른쪽 리스트를 다시 정렬한다.
4. 리스트의 크기가 0 또는 1이 될때까지 반복한다.

## 특징
- 장점
  - 평균적인 속도가 빠르다
  - 추가 메모리 공간을 요구하지 않는다.
- 단점
  - 정렬된 리스트에 대해서는 퀵 정렬의 불균형 정렬에 의해 오히려 수행시간이 더 많이 걸린다.

## 시간 복잡도
- 최선
  - O(NlogN)
- 최악
  - O(N^2)
- 평균
  - O(NlogN)

***

# Merge Sort
- 문제를 작은 2개의 문제로 분리하고 각각을 해결한 다음, 결과를 모아서 원래의 문제를 해결하는 전략이다.

## 정렬 과정
1. 리스트의 길이가 0 또는 1이면 이미 정렬된 것으로 본다.
2. 정렬되지 않은 리스트를 절반으로 잘라 비슷한 크기의 두 부분 리스트로 나눈다.
3. 각 부분 리스트를 재귀적으로 병합 정렬을 이용해 정렬한다.
4. 두 부분 리스트를 다시 하나의 정렬된 리스트로 합병한다.

## 특징
- 장점
  - 안정적인 정렬 방법이다.
    - 데이터 분포의 영향을 덜 받아 무엇이든 정렬되는 시간이 동일하다.
  - 만약 레코드를 LinkedList로 구성하면, 링크 인덱스만 바뀌므로 데이터의 이동은 무시할 수 있을 정도로 작아진다.
    - 제라리 정렬로 구현할 수 있다.
  - 크기가 큰 레코드를 정렬할 경우에 LinkedList를 사용하면, 병합 정렬은 퀵 정렬을 포함한 다른 어떤 방법 보다 효율적이다.
- 단점
  - 만약 레코드를 배열로 구성하면, 임시 배열이 필요하다.
    - 제자리 정렬이 아니다.
  - 레크드들의 크기가 큰 경우에는 이동 횟수가 많으므로 매우 큰 시간적 낭비를 초래한다.
  
## 시간 복잡도 
- O(NlogN)

***

# Heap Sort
- 최대 Heap tree나 최소 Heap tee를 구성해 정렬을 하는 정렬 알고리즘.
- 내림차순 정렬을 위해서는 최대 Heap을 구성하고 오름차순 정렬을 위해서는 최소 Heap을 구성하면 된다.

## Heap
- 완전 이진 트리의 일종으로 우선순위 큐를 위해 만들어지 자료구조
- 최댓값, 최솟값을 쉽게 추출할 수 있는 자료구

## 정렬 과정
1. 정렬해야 할 N개의 요소들로 최대 힙(내림차순 기준)을 구성한다.
2. 한 번에 하나씩 요소를 힙에서 꺼내서 배열의 뒤부터 저장하면 된다.
3. 삭제되는 요소(최댓값)은 값이 감소되는 순서로 정렬되게 한다.

## 최대 힙 구현
- 힙(heap)은 1차원 배열로 쉽게 구현될 수 있다.
- 정렬해야 할 n개의 요소들을 1차원 배열에 기억한 후 최대 힙 삽입을 통해 차례대로 삽입한다.
- 최대 힙으로 구성된 배열에서 최댓값부터 삭제한다.

## 1.최대 힙의 삽입
1. 힙에 새로운 요소가 들어오면, 일단 새로운 노드를 힙의 마지막에 삽입한다.
2. 새로운 노드를 부모 노드들과 교환해서 힙의 성질을 만족시킨다.

## 2.최대 힙의 삭제
1. 최대 힙에서 최댓값은 루트 노드이므로 루트 노드가 삭제된다.
   - 최대 힙에서 삭제 연산은 최댓값을 가진 요소를 삭제하는 것이다.
2. 삭제된 루트 노드에는 힙의 노드를 가져온다.
3. 힙을 재구성한다.


## 특징
- 장점 
  - 시간 복잡도가 좋은 편이다.
  - 힙 정렬이 가장 유용한 경우는 전체 자료를 정렬하는 것이 아니라 가장 큰 값 몇개만 필요할 때 이다.
- 단점
  - 구현이 복잡한 편이다.

## 시간 복잡도
- O(NlogN)

***

# Counting Sort
- 요소 값들끼리 서로 비교하지 않고 정렬하는 정렬 알고리즘
- 데이터의 값이 몇 번 나왔는지 세는 정렬 알고리즘이다.

## 특징
- 장점
  - 두 수를 비교하는 과정이 없기 때문에 빠른 배치가 가능하다.
- 단점
  - 수의 범위가 극단적으로 크면 메모리가 엄청나게 낭비될 수 있다.


## 시간 복잡도
- O(N)

***