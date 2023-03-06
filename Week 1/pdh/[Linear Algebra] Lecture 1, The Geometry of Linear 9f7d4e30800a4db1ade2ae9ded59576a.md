# [Linear Algebra] Lecture 1, The Geometry of Linear Equations

생성일: 2023년 3월 5일 오후 1:22

---

# 선형대수(Linear Algebra)

## Introduction

이번에 선형대수를 공부하면서 내용을 정리해보았습니다.

강의 영상 : [https://ocw.mit.edu/courses/18-06-linear-algebra-spring-2010/video_galleries/video-lectures/](https://ocw.mit.edu/courses/18-06-linear-algebra-spring-2010/video_galleries/video-lectures/)

github : https://github.com/jwkweon/study-linear-algebra

참고한 블로그 :

[https://blog.naver.com/PostView.naver?blogId=skkong89&logNo=221390707701&categoryNo=48&parentCategoryNo=0&viewDate=&currentPage=1&postListTopCurrentPage=&from=postList&userTopListOpen=true&userTopListCount=30&userTopListManageOpen=false&userTopListCurrentPage=1](https://blog.naver.com/PostView.naver?blogId=skkong89&logNo=221390707701&categoryNo=48&parentCategoryNo=0&viewDate=&currentPage=1&postListTopCurrentPage=&from=postList&userTopListOpen=true&userTopListCount=30&userTopListManageOpen=false&userTopListCurrentPage=1)

[https://twlab.tistory.com/8](https://twlab.tistory.com/8)

[https://rekt77.tistory.com/102](https://rekt77.tistory.com/102)

## 행렬

선형대수는 선형 방정식으로 표현되는 어떤 시스템을 풀기 위한 방법론이다.

우선 n개의 선형 방정식들과 n개의 미지수가 있는 일반 적이면서 nice한 경우를 가정해보자.

$$
2x- y = 0 \\ -x+2y = 3
$$

위와 같은 두 식이 되겠고 이를 **행렬(Matrix)**로 표현해보자.

$$
 {{ 2 \ -1 } \brack { -1 \ 2 } } { x \brack y } = { 0 \brack 3} \\ A \quad\quad \rm {x}   \quad\quad \it b
$$

A : 계수 행렬(coefficient matrix)

x :  미지수 벡터(unknown vector)

b : 우변 벡터(right-hand side vector)

## Vector, Matrix, Tensor

| RANK | TYPE | EXAMPLE |
| --- | --- | --- |
| 0 | scalar | $[ \ 1  \ ]$ |
| 1 | vector | $[ \ 1 , 2 \ ]$, $1 \brack 2$ |
| 2 | matrix | $[ \ [\ 1, 2 \ ] , [ \ 1, 2 \ ] \ ]$, ${\ 1, 2 \ } \brack { \ 1 , 2 \ }$ |
| 3 | 3-tensor | $[ \ [ \ [ \ 1, 2 \ ] , [ \ 1 , 2 \ ]  \ ], [ \ [ \ 1 , 2 \ ]  , [ \ 1 ,2 \ ] \ ] ,[ \ [ \ 1 , 2 \ ] , [ \ 1 ,2 \ ] \ ]  \ ]$ |
| n | n-tensor |  |

**텐서**란 매우 수학적인 개념으로 데이터의 배열이라 볼 수 있다.

텐서의 Rank는 간단히 말해서 몇 차원 배열 인가를 의미한다.

**스칼라**는 일반적으로 존재하는 그냥 값 1개이다.

**벡터**는 스칼라가 여러 개 모인 것이다.

**매트릭스**는 벡터가 여러개 모인 것이다.

마찬가지로 매트릭스가 여러개 모이면 **3d-텐서**가 된다.

차원이 높아질 수록 아래 차원의 것을 모아 놓는 배열이라고 생각하면 된다.

![1.png](%5BLinear%20Algebra%5D%20Lecture%201,%20The%20Geometry%20of%20Linear%209f7d4e30800a4db1ade2ae9ded59576a/1.png)

## Row picture

Row picture란 쉽게 말해 Row 방향의 방정식을 하나씩 보는 것이다.

행렬에서 각 Row에 해당하는 방정식을 한 번에 하나씩 보는 것이 Row picture이고,

각 Row방정식들의 교점을 찾는 것이 목표이고 그 교점이 그 시스템의 해이다.

$$
2x- y = 0  \Rightarrow y = 2x \\ -x+2y = 3  \Rightarrow y= \frac {x}{2} + \frac {3}{2}
$$

위 식은 두 개의 직선의 방정식이 나오고 좌표 공간에서 직선으로 표현이 된다.

![2.PNG](%5BLinear%20Algebra%5D%20Lecture%201,%20The%20Geometry%20of%20Linear%209f7d4e30800a4db1ade2ae9ded59576a/2.png)

따라서, 교점 (1, 2)가 이 시스템의 해인 것을 알 수 있다.

만일, 직선이 평행하거나 교점이 없다면 이 시스템의 해는 존재하지 않는다.

2x2행렬에선 직선으로 표현되고, 3x3행렬에선 평면(Plane)으로 표현된다.

## Column picture

Column picture는 말 그대로 행렬에서 column part를 보는 것이다.

$$
2x- y = 0 \\ -x+2y = 3 \\ {\rm {x \quad \ \  y \quad \ \ b }}
$$

왼쪽 x 앞의 계수들 x column 즉, $2 \brack -1$이고, y column은 $-1 \brack 2$이다. b column은 $0 \brack 3$이다.

따라서, column식으로 표현하면 아래와 같다.

$$
\rm { x { 2 \brack -1} + y { -1 \brack 2 } = { 0 \brack 3}}
$$

또한, 각각 벡터이므로 벡터 식으로 표현하면 다음과 같다.

$$
a _1 \vec {v_1} + a_2 \vec { v_2} = \vec u
$$

이러한 형태를 **선형 결합(Linear Combination)**이라 부르며, 선형대수에서 가장 근본적이며 핵심적인 연산이다. 여기서는 column의 선형결합(Linear combination of columns)라 할 수 있다.

따라서, 벡터 연산이므로 이를 좌표 상의 표현해보면 아래와 같다.

![3.PNG](%5BLinear%20Algebra%5D%20Lecture%201,%20The%20Geometry%20of%20Linear%209f7d4e30800a4db1ade2ae9ded59576a/3.png)

빨간색 벡터와 파란색 벡터의 합으로 결국 연두색 벡터가 되어야하므로 벡터 평행이동을 한후 벡터를 늘려주면 된다. 여기서 벡터를 늘릴때 늘린 크기만큼이 결국 해가된다.

![4.PNG](%5BLinear%20Algebra%5D%20Lecture%201,%20The%20Geometry%20of%20Linear%209f7d4e30800a4db1ade2ae9ded59576a/4.png)

여기서는 빨간색 벡터를 파란색 벡터 끝에 옮긴후 크기를 2배해준후 더하면 연두색 벡터가 된다.

따라서, 해는 x=1, y=2가 될 것이다.

$$
\rm { 1 { 2 \brack -1} + 2 { -1 \brack 2 } = { 0 \brack 3}}
$$

$$
1 \  \vec {v_1} + 2 \ \vec { v_2} = \vec u
$$

## 3x3 행렬

여태까지는 2x2행렬에 대해 2D 공간에서 공부했는데, 이번에는 3x3행렬에 대해 3D 공간에서 공부해보자.

$$
2x - y \quad = 0 \\ -x+2y-z = -1 \\ \quad -3y+4z =4
$$

마찬가지로 행렬 식으로 표현해보자.

$$
\begin{bmatrix} 2 & -1 & 0 \\ -1 & 2 & -1 \\ 0 & -3 & 4 \end{bmatrix}  \begin{bmatrix} x \\ y \\ z \end{bmatrix}  = \begin{bmatrix} 0 \\ -1 \\ 4 \end{bmatrix} \\ \rm A \quad \quad \quad \quad \quad x = \quad b
$$

먼저 **Row picture**로 살펴보자.

여기서 미지수가 3개이므로 좌표평면에 그리면 3D평면에 그려야하고 각 행마다 하나의 평면의 방정식이 될 것이다.

따라서, 총 3개의 평면이 나오게 된다.

![5.PNG](%5BLinear%20Algebra%5D%20Lecture%201,%20The%20Geometry%20of%20Linear%209f7d4e30800a4db1ade2ae9ded59576a/5.png)

위 3개의 평면은 딱 한 점에서 만나고 그 좌표는 (0, 0, 1)이다. 따라서, 이 시스템의 해는 (0, 0, 1)이다.

만일, 3개의 평면 중 2개의 평면이 평행하거나 특수한 경우를 제외하면 어느 한점에서 만나고 이 만나는 점이 이 시스템의 해이다.

이번에는 Column picture로 풀어보자. 일단, column part로 식을 써보면

$$
\rm x \begin{bmatrix} 2 \\ -1 \\ 0 \end{bmatrix} + y \begin{bmatrix} -1 \\ 2 \\ -3 \end{bmatrix} + z \begin{bmatrix} 0 \\ -1 \\ 4 \end{bmatrix} = \begin{bmatrix} 0 \\ -1 \\ 4 \end{bmatrix}
$$

여태까지는 2차원 벡터들이 였다면 이번에는 3차원 벡터들의 선형 결합으로 나타난다.

사실, 여기서 보면 z의 column 벡터와 우변 벡터가 같은 것을 확인 할 수 있다.

따라서, 해는 (0, 0, 1)이 된다.

아니면 3D공간에서 벡터의 합을 통해 x, y, z를 찾아내면 된다.

![6.PNG](%5BLinear%20Algebra%5D%20Lecture%201,%20The%20Geometry%20of%20Linear%209f7d4e30800a4db1ade2ae9ded59576a/6.png)

$$
\rm x \begin{bmatrix} 2 \\ -1 \\ 0 \end{bmatrix} + y \begin{bmatrix} -1 \\ 2 \\ -3 \end{bmatrix} + z \begin{bmatrix} 0 \\ -1 \\ 4 \end{bmatrix} = \begin{bmatrix} 1 \\ 1 \\ -3 \end{bmatrix}
$$

만일, 위와 같이 우변 벡터가 ```\begin{bmatrix} 1 \\ 1 \\ -3 \end{bmatrix}```로 바뀐다면 정답이 바로 보이는가?

찾기 힘들 것이다.

만일 우변 벡터가 더 복잡한 수라 생각해보자, 모든 경우의 벡터에 대해서 좌변의 선형 결합으로 우변의 모든 경우의 벡터를 만들어 낼 수 있을까?

다시 말하면, **시스템 A에서 좌변의 선형 결합으로 공간 상의 모든 벡터(혹은 점)을 만들어낼 수 있는가?**

강의에서는 다음과 같이 질문 했다.

Can I solve Ax=b for every b? 정답은 여기서 다룬 시스템 A를 기준으로 ‘**그렇다**’ 이다.

Do the linear combinations of the columns fill 3-D space? 시스템 A를 기준으로 모두 채울 수 있다.

그런 이유는 **A의 column picture의 벡터들이 서로 다른 평면에 존재하기 때문**이다.

## 결론

우리는

$$
\rm A x = b
$$

라는 식을 통해 두 가지 방법을 통해 시스템을 해석했는데,

첫번째 방법인 **Row 방법은 다른말로 내적(Dot product)**이며, **Column 방법은 선형결합(Linear Combination)**이다.

Row picture은 공간 상에서 **선 또는 평면**으로 표현되고

Column picture은 공간 상에서 **벡터들의 조합**으로 표현된다.
