# Lecture1

# The geometry of linear equations

## 선형대수학??

선형대수학은 벡터 공간, 벡터, 선형 변환, 행렬, 연립 선형 방정식 등을 연구하는 대수학의 한 분야이다. 현대 선형대수학은 그중에서도 벡터 공간이 주 연구 대상이다.

![400px-Linear_subspaces_with_shading.svg.png](Lecture1%20f809c51919304d45976adcf295ecb7f1/400px-Linear_subspaces_with_shading.svg.png)

위의 그림은 벡터 공간 내부에서 원점을 지나가는 직선과 평면 (벡터 공간의 부분 공간)을 표현한 것이다.

## 행렬이란??

행렬은 수 또는 다항식 등을 직사각형 모양으로 배열한 것이다. 예를 들어, 실수 1, 9, −13, 20, 5, −16을 2×3 직사각형 위에 배열한 행렬은 다음과 같다.

![71076d72176f8e48cbb51ad5b14b637c6ee7832b.svg](Lecture1%20f809c51919304d45976adcf295ecb7f1/71076d72176f8e48cbb51ad5b14b637c6ee7832b.svg)

## 2가지 분석 방법

$$
2x-y=0\\-x+2y=3
$$

위의 연립 방정식을 미지수를 포함한 행렬 식으로 나타내보면 다음과 같다.

$$
\begin{bmatrix} 
2 & -1 \\ -1 & 2 
\end{bmatrix} 
\begin{bmatrix} 
x \\ y  
\end{bmatrix}
=
\begin{bmatrix} 
0 \\ 3  
\end{bmatrix}
$$

상수 행렬(1) X 미지수 행렬 = 상수 행렬(2)로 나타낼 수 있음을 알 수 있고, 이를 식으로 정리해 보면 언제나 아래와 같이 나타낼 수 있다.

$$
Ax = b
$$

이를 row picture과 column picture로 나타내 보자.

## 1. Row Picture

열을 그대로 곱하면 아래와 같은 똑같은 연립 방정식이 도출된다.

$$
2x-y=0\\-x+2y=3
$$

위의 두 식을 평면 상의 직선으로 나타내면 다음과 같다.

![Untitled](Lecture1%20f809c51919304d45976adcf295ecb7f1/Untitled.png)

이때 우리는 상식적으로 두 직선의 교점이 연립 방정식의 해가 됨을 알 수 있다. 

![Untitled](Lecture1%20f809c51919304d45976adcf295ecb7f1/Untitled%201.png)

하지만, 이렇게 나타내면 차원이 올라갈수록 한눈에 보기 어렵다는 단점이 있다. 예를 들어 차원을 하나 올려서 3x3 행렬을 살펴보자. 

$$
2x-y\quad=0\\
-x + 2y -z = -1\\
\quad-3y + 4z = 4
$$

위와 같이 3개의 식이 있는 연립 방정식을 행렬로 나타내면 다음과 같이 나타낼 수 있다.

$$
\begin{bmatrix}
2 & -1 & 0 \\
-2 & 2 & -1 \\
0 & -3 & 4 \\
\end{bmatrix}
\begin{bmatrix}
x \\
y \\
z \\
\end{bmatrix}
\begin{bmatrix}
0 \\
-1 \\
4 \\
\end{bmatrix}
$$

이를 이번엔 공간 상의 평면으로 나타내 보자.

![Untitled](Lecture1%20f809c51919304d45976adcf295ecb7f1/Untitled%202.png)

식을 통해 3개의 평면이 1점에서 만난 다는 것을 알 수 있지만, 직관적으로 알아 보기 힘들다. 

즉, row picture로 행렬을 분석하면 직관적인 분석이 어렵다는 것을 볼 수 있다.

## 2. Column Picture

Row picture의 단점을 해결하기 위해 Column picture를 사용할 수 있는데 이 picture는 vector를 사용한다. 똑같이 아래와 같은 연립 방정식을 이번엔 행에 대한 식으로 나타내 보자. 그러면 다음 식과 같이 나타낼 수 있다.

$$
x
\begin{bmatrix}
2\\
-1\\
\end{bmatrix}
+
y
\begin{bmatrix}
-1\\
2\\
\end{bmatrix}
=
\begin{bmatrix}
0\\
3\\
\end{bmatrix}
$$

이때 (2,-1) (-1, 2), (0, 3)을 벡터로 나타낸 뒤 벡터의 합을 이용하여 앞의 두 벡터를 (0, 3)과 일치 시키면 만족 시키는 x, y를 알 수 있다. 이를 그림으로 나타내보자. 

![Untitled](Lecture1%20f809c51919304d45976adcf295ecb7f1/Untitled%203.png)

 $(col1 + 2\times col2) = col3$ 이고 따라서, x = 1, y = 2 임도 알 수 있다.

3차원도 row 와 같다. 그림으로 나타내면 다음과 같다.

![Untitled](Lecture1%20f809c51919304d45976adcf295ecb7f1/Untitled%204.png)

하지만 언제나 row, column picture로 행렬을 분석할 순 없다. 이때 필요한 방법이 바로 elimination (소거법) 이다. 그리고 이는 세상의 모든 Software가 방정식을 푸는 방식이다. 

그렇다면 과연 $Ax = b$ 를 모든 ‘$b$’에 관하여 풀 수 있을까?? 이에 대해 살펴보자

## 모든 $b$에 관하여 풀 수 있나??

3차원 행렬 식을 가정해서 적어보자.

$$
x
\begin{bmatrix}
2\\
-1\\
0\\
\end{bmatrix}
+ y
\begin{bmatrix}
-1\\
2\\
-3\\
\end{bmatrix}
+z
\begin{bmatrix}
0\\
-1\\
4\\
\end{bmatrix}
=
\begin{bmatrix}
1\\
1\\
-3\\
\end{bmatrix}

$$

위 행렬 식의 경우 Column Picture 그림과 같이 3Columns가 한 평면 위에 있지 않음을 알 수 있다. 그렇다면 3Columns가 한 평면 위에 있는 경우는 어떻게 될까??

$\rightarrow$ 답은 b 행렬 벡터도 무조건 그 평면 위에 있어야 x, y, z가 존재한다.

따라서, b 행렬 벡터가 평면 위에 있지 않으면 예외인 것이다. 차원을 계속 높이는 경우도 똑같다고 보면 된다.

## 행렬식 계산

앞 행렬의 (i)행과 뒤 행렬의 (j)열을 곱해서 더한 후 해당 자리(i,j)에 그 값을 삽입하면 행렬 식 결과 행렬이 도출된다. 이에 따라 앞 행렬의 행과 뒤 행렬의 열 개수가 같아야지만 행렬 식 결과 값이 존재할 수 있다.

![Untitled](Lecture1%20f809c51919304d45976adcf295ecb7f1/Untitled%205.png)
