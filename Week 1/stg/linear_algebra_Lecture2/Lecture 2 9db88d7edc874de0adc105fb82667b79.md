# Lecture 2

# Elimination

## 소거법이란??

소거법은 연립 방정식을 풀이하는 간단한 기법이다. 연립 방정식은 행렬 식으로 표현할 수 있으므로 행렬 계산에서도 사용된다. Linear system을 풀기 위한 해법이며 가우스 소거법 이라고도 불린다. 

## 가우스 소거법

**가우스 소거법(Gaussian Elimination)**은 미지수가 n개인 연립 일차 방정식을 나타내는 행렬에 **기본 행 연산(Elementary Row Operation)**을 적용하여 **행 사다리꼴 행렬(Row Echelon Form of Matrix)**로 만들어 해를 구하는 방법을 말한다.

![Untitled](Lecture%202%209db88d7edc874de0adc105fb82667b79/Untitled.png)

## 소거법 과정

## Elimination

Succes (Matrix good one) / Fail

## Elimination matrices

## Matrix multiplication

아래 그림으로 자세히 알아보자

![Untitled](Lecture%202%209db88d7edc874de0adc105fb82667b79/Untitled%201.png)

소거법을 사용하여 Upper triangle 행렬만 남기고 아래는 전부 ‘0’으로 만드는 과정을 볼 수 있다. 이러면 계산이 무척 쉬워짐도 확인할 수 있다.

이때 대각선 성분들 가운데 0이 존재하면 계산이 되질 않는다. 해가 정해지지 않기 때문이다. 

계산 과정을 살펴보면 (2,1) 성분을 0으로 만들기 위하여 1행 값들에 -3을 곱한 뒤 2행과 더해주었고 (3,2) 성분을 0으로 만들기 위하여 2행 값에 -2를 곱한 뒤 3행과 더해주었다.

## Column & Row

행렬 식에서는 곱셈의 교환 법칙이 성립하지 않는다. 아래 그림으로 예시를 들어보자.

![Untitled](Lecture%202%209db88d7edc874de0adc105fb82667b79/Untitled%202.png)

Column 계산은 Column 형식으로 Row 계산은 Row 형식으로 결과 값이 나오는 것을 확인할 수 있다.

## 간단한 행렬 식으로 표현해 보기

위의 소거법 과정을 간단한 행렬 식으로 표현해보자.

![Untitled](Lecture%202%209db88d7edc874de0adc105fb82667b79/Untitled%203.png)

U 행렬을 만들기 위해서 $(E32\times E21)A = U$ 의 식이 도출 되는 것을 알 수 있고 이때 행렬 식에서 결합 법칙은 성립 합을 확인할 수 있다. 앞선, 행렬 식 계산의 성질을 이용하여 역행렬과 치환 행렬을 구할 수 있다.

## Permutation(치환 행렬)

![Untitled](Lecture%202%209db88d7edc874de0adc105fb82667b79/Untitled%204.png)

위의 그림은 치환 행렬의 정의를 그림으로 표현한 것이다. 1행과 2행의 치환이 적용되었으며 Row의 계산이기 때문에 치환 행렬이 왼쪽에 위치하게 된다. 열의 치환이 적용되려면 오른쪽으로 자리를 옮겨야 한다.

![Untitled](Lecture%202%209db88d7edc874de0adc105fb82667b79/Untitled%205.png)

위의 그림처럼 치환 행렬이 오른쪽에 위치하면 열의 위치가 변경됨을 알 수 있다. 따라서, 중요한 정의를 도출해보면 아래와 같다.

![Untitled](Lecture%202%209db88d7edc874de0adc105fb82667b79/Untitled%206.png)