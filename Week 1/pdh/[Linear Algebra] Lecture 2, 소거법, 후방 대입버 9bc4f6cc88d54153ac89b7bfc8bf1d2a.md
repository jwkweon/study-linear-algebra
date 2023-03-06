# [Linear Algebra] Lecture 2, 소거법, 후방 대입법 그리고 소거 행렬

생성일: 2023년 3월 5일 오후 4:37

# 선형대수(Linear Algebra)

## Introduction

이번에는 시스템 A의 해를 구하기 위한 방법들을 배울 것이다.

방법으로는 소거법, 후방 대입법, 소거 행렬, 행렬 곱 등이 있다. 차례대로 공부해보자.

강의 영상 : [https://ocw.mit.edu/courses/18-06-linear-algebra-spring-2010/video_galleries/video-lectures/](https://ocw.mit.edu/courses/18-06-linear-algebra-spring-2010/video_galleries/video-lectures/)

github : https://github.com/jwkweon/study-linear-algebra

참고한 블로그 :

[https://blog.naver.com/PostView.naver?blogId=skkong89&logNo=221390707701&categoryNo=48&parentCategoryNo=0&viewDate=&currentPage=1&postListTopCurrentPage=&from=postList&userTopListOpen=true&userTopListCount=30&userTopListManageOpen=false&userTopListCurrentPage=1](https://blog.naver.com/PostView.naver?blogId=skkong89&logNo=221390707701&categoryNo=48&parentCategoryNo=0&viewDate=&currentPage=1&postListTopCurrentPage=&from=postList&userTopListOpen=true&userTopListCount=30&userTopListManageOpen=false&userTopListCurrentPage=1)

[https://twlab.tistory.com/8](https://twlab.tistory.com/8)

[https://rekt77.tistory.com/102](https://rekt77.tistory.com/102)

## 소거법(Elimination)

먼저 소거법에는 두가지 case가 있다.

Success case, Failure case 말에서 보이듯이 소거법을 가능한 case와 불가능한 case라고 일단이해하고 넘어가자.

**Success case**에 대해 보자.

아래식은 소거법이 되는 case이다.

$$
x+2y+z = 2 \\ 3x+8y+z = 12 \\ \  \ \  \  \quad 4y+z = 2  \\ \rm Ax = b
$$

위에서 행렬 A는 방정식의 계수들만 나열하여 만든 시스템 행렬(System Matrix)이다.

해를 구하는 과정은 모두 시스템 행렬 A를 이용하여 이루어진다.

아래 식은 시스템 행렬을 Index 형태로 나타내본거다.

$$
\quad \quad \quad \quad \begin{matrix} Col_1 & Col_2 & Col_3 \end{matrix}  \\ \begin{matrix} Row_1 \\ Row_2 \\ Row_3 \end{matrix} \begin{bmatrix} 1 && 2 && 1 \\ 3 && 8 && 1 \\ 0 && 4 && 1 \end{bmatrix} \\ \quad \quad \quad \rm A
$$

$$
\\\ Index : \ \begin{bmatrix} e_{11} & e_{12} & e_{13} \\ e_{21} & e_{22} & e_{23} \\ e_{31} & e_{32} & e_{33} \end{bmatrix}
$$

d여기 $e_{12}$라 하면 1은 첫 번째 행($Row_1$)을 뜻하고, 2는 두 번째 열($Col_2$)을 뜻한다.

즉, 아래 첨자 숫자에서 첫 번째는 Row index, 두 번째는 Col index이다.

이것을 공부한 이유는 소거법의 순서가

$Row_1$ → $Row_3$ 방향, $Col_1$ → $Col_3$ 방향으로 소거가 진행이 되기 때문이다.

$$
\begin{bmatrix} 1  & 2 & 1 \\ 3 & 8 & 1 \\ 0 & 4 & 1 \end{bmatrix} \Rightarrow \begin{bmatrix} 1& 2& 1 \\ 0& 2 & -2 \\ 0& 4 &1 \end{bmatrix}
$$

위 과정을 설명해보면 먼저 $Row_1$을 이용해 $Row_2$를 소거 했다 보면 된다.

$Row_1$에다가 곱하기 3을 한 후 그대로 $Row_2$에 빼주면 $e_{21}$이 0이 되어 소거가된다.

여기서 $e_{21}$위에 있는 $e_{11} = 1$을 없애고자 하는 텀의 중심축이라 하며 이 원소를 우리는 **피벗(Pivot)** 이라 부른다.

다시 설명하면 pivot을 중심으로 그 아래쪽에 해당하는 모든 텀들을 소거해야 한다.

참고로 $e_{31}$은 이미 0이어서 계산할 필요가 없다.

이제 x에 관한 텀들은 해결되었으니 y와 z에 관한 텀들도 해결해보자.

먼저 y축을 해결하려면 피벗을 y축 column 즉, $\begin{matrix} 2 \\ 2 \\ 4 \end{matrix}$ 중에서 정해야 한다.

여기서 $e_{12}$를 피벗으로 정하면 애써 없앤 x텀이 다시 되살아날 것이다.

따라서 두 번째 피벗은 $e_{22}$가 되어야 한다.

$$
\begin{bmatrix} 1  & 2 & 1 \\ 0 & 2 & -2 \\ 0 & 4 & 1 \end{bmatrix} \Rightarrow \begin{bmatrix} 1& 2& 1 \\ 0& 2 & -2 \\ 0& 0 &5 \end{bmatrix} \\ \rm A \quad \quad \quad \quad \quad \quad u
$$

$e_{22}$가 피벗이니 그아래에있는 $e_{32}$를 소거하기 위해 $Row_2$에 곱하기 2를 한 후 $Row_3$에 빼준다.

따라서, 이런식으로 해서 $e_{11}$, $e_{22}$, $e_{33}$을 기준으로 아래쪽 원소의 값은 모두 0인 ($e_{33}$은 마지막 원소여서 피벗이다) **상삼각행렬(Upper triangle Matrix)**이 완성되었고 이러한 행렬을 **u행렬**이라 한다.

보며는 u행렬의 형태는 위쪽으로 직각 삼각형이 형성된 걸 확인할 수 있다.

이번에는 **Failure case**에 대해 알아보자.

일단, pivot이 0인 경우 소거법 적용이 불가능하다. 아무리 곱해봤자 0이기 때문이다.

또 다른 경우는 x텀을 소거하기 위해 곱하고 뺐는데 y텀까지 소거가 되는 경우가 있다.

$$
\begin{bmatrix} 0 & 2 &1 \\ 3 & 8 & 1 \\ 0 & 4 &1 \end{bmatrix} , \begin{bmatrix} 1 & 2 & 1 \\ 3 & 6 & 1 \\ 0 & 4 & 1 \end{bmatrix}
$$

이런 경우에는 0이 아닌 피벗의 방정식과 교환하는 방법을 사용한다.

$$
\begin{bmatrix} 1& 2 & 1 \\ 3 & 6 & 1  \\ 0 & 4&1 \end{bmatrix} \Rightarrow \begin{bmatrix} 1 & 2 & 1 \\ 0 & 0 & -2 \\ 0 & 4 & 1 \end{bmatrix} \Rightarrow \begin{bmatrix} 1 & 2& 1 \\ 0 & 4 & 1 \\ 0 & 0 & -2 \end{bmatrix}
$$

먼저 $Row_1$에 3을 곱한 후 $Row_2$에 빼준다. $e_{22}$ 피벗이 0이므로 $Row_3$과 $Row_2$를 교환한다.

이런 방식으로 소거가 가능한 형태로 만들 수 있다.

결과적으로 피벗이 0이기 때문에 소거가 불가능한 경우 우리는 **Row exchange**를 통해 소거가 가능하도록 만들 수 있다. 단, 다음 방정식의 피벗 column의 값이 0이 아닐 경우에만 가능하다.

다음과 같은 경우도 있다. 시스템을 소거법을 통해 최종 u행렬을 만들었는데 마지막 u행렬의 z column 피벗이 0이 된다. 이런 경우 시스템 A는 역행렬이 존재하지 않는(not-invertible) 행렬이 된다.

$$
\begin{bmatrix} 1 & 2 &1 \\ 3 & 8 & 1 \\ 0 & 4 & -4 \end{bmatrix} \Rightarrow \begin{bmatrix} 1 & 2 &1 \\ 0 &2 & -2 \\ 0 & 0 & 0 \end{bmatrix} \\ \rm A \quad \quad \quad \quad \quad \quad u
$$

결국, Failure case에는 두 가지 case가 있다.

첫 번째는 극복이 가능한 temporary failure이고, 두 번째는 극복이 불가능한 complete failure 이다.

## 후방대입법(Back-substitution)

소거법에서는 Ax=b에서 A만을 이용해왔다.

사실, b까지 고려하여 소거법을 적용해야 한다. 이제 후방 대입법을 이해하기 위해 b까지 함께 고려한 소거법을 살펴볼 차례이다.

A를 b와 함께 다시 써보자.

$$
\begin{bmatrix} 1& 2 & 1 \quad | &2 \\ 3 & 8 & 1 \quad | &12 \\ 0 & 4 & 1 \quad  | & 2 \end{bmatrix} \\ \rm A \quad \quad \quad \quad  b
$$

위와 같은 행렬을 **Augmented Matrix**라 부른다. 부가적인 column인 b를 붙였다는 의미이다.

여기서, b를 extra column이라 한다.

따라서, 앞서 배웠던 소거법을 b까지 포함해서 수행하면 된다.

$$
\begin{bmatrix} 1& 2 & 1 \quad | &2 \\ 3 & 8 & 1 \quad | &12 \\ 0 & 4 & 1 \quad  | & 2 \end{bmatrix} \Rightarrow \begin{bmatrix} 1& 2 & 1 \quad | &2 \\ 0 & 2 & -2 \ | &6 \\ 0 & 4 & 1 \quad  | & 2 \end{bmatrix} \Rightarrow \begin{bmatrix} 1& 2 & 1 \quad | &2 \\ 0 & 2 & -2 \ | &6 \\ 0 & 0 & 5 \quad  | & -10 \end{bmatrix}\\ \rm A \quad \quad \quad \quad  b \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad \quad u \quad \quad \quad \quad c
$$

이런식으로 소거법을 이용하여 u와 c를 만든다. 그러면 방정식은 ux=c 형태가 될 것이다.

이를 방정식 형태로 써보자.

$$
x+2y+z =2 \\ \quad \ \  2y-2z = 6 \\\quad \quad \quad \quad \quad \  5z=-10 \\ \rm ux =c
$$

이제 간단하다, 맨 아래부터 순서대로 대입해주면 된다.

$Row_3$으로 부터 z= -2인것을 쉽게 알 수 있고, 이를 $Row_2$에 대입해서 y를 구하고 또 $Row_1$에서 x를 구하면 된다. 해는 x=2, y=1, z=-2가 된다.

## 소거행렬과 행렬곱셈(Elimination matrices and Matrix multiplication)

여태까지는 시스템 행렬 A와 우변 벡터 b에 직접 소거법 과정을 나타냈다.

이번 파트에서는 소거 행렬을 만들고 이를 시스템 행렬 A에 곱해서 소거법을 적용하는 것이다.

지난 강의에서 column picture을 다시 떠올려보자.

$$
\begin{bmatrix} 1 & 2 & 3 \\ 1 & 2 & 3 \\ 1 & 2 & 3 \end{bmatrix} \begin{bmatrix} 3 \\ 4 \\ 5 \end{bmatrix} = 3 \begin{bmatrix} 1 \\ 1  \\ 1  \end{bmatrix} + 4 \begin{bmatrix} 2 \\ 2 \\ 2 \end{bmatrix} + 5 \begin{bmatrix} 3 \\ 3 \\ 3 \end{bmatrix} = \begin{bmatrix} 26 \\ 26 \\ 26 \end{bmatrix}
$$

중, 고등학교 때 배웠던 방식으로 행렬 곱을 볼 수도 있지만, 행렬의 column들과 벡터 원소간의 선형결합으로 볼 수 있다. 여기서  Matrix*column = column임을 기억하자.

column의 선형결합과 마찬가지로 row의 선형결합도 있다.

$$
\begin{bmatrix} 1 & 4& 7 \end{bmatrix} \begin{bmatrix} 1 & 1& 1 \\ 2 & 2 &2 \\ 3 & 3& 3 \end{bmatrix} = 1 \begin{bmatrix} 1 & 1 & 1 \end{bmatrix} + 4 \begin{bmatrix} 2 & 2 & 2 \end{bmatrix} + 7 \begin{bmatrix} 3 & 3 & 3 \end{bmatrix} \\ =  \begin{bmatrix} 30 & 30 & 30 \end{bmatrix} \quad \ \ \ 
$$

여기서, 1x3 행렬과 3x3 행렬을 곱할때 1x3의 열과 3x3의 행의 차원이 반드시 같아야하며, 최종결과는 양쪽 끝의 숫자인 1x3이 결과로 나온다.

1단계:

먼저 소거를 위한 소거행렬을 만들어 보자.

소거행렬이란 단순하다. 소거행렬과 시스템 행렬의 곱을 통해 소거법을 하는 방식이다.

그렇다면 아래에 왼쪽의 소거행렬에는 어떤 값들이 들어갈까?

$$
\begin{bmatrix} & & & \\ & & & \\ & & & \end{bmatrix} \begin{bmatrix} 1 & 2 &1 \\ 3 & 8 & 1 \\ 0& 4 &1 \end{bmatrix} \\ \rm E_{21} \quad \quad  \quad \quad A
$$

(E21이라 칭한이유는 Elimination에서 E를 따오고, 21은 A의 $Row_2$, $Col_1$을 0으로 만드는 것이 목적이기 때문이다. → 즉, $e_{11}$을 피벗으로보고 소거법을 적용하는 것과 같은 원리)

따라서, 다음과 같이 행렬 만들면 $e_{11}$을 피벗으로 사용했을 때의 소거법과 같은 결과가 나온다.

$$
\begin{bmatrix} 1& 0& 0& \\ -3& 1& 0& \\ 0& 0& 1& \end{bmatrix} \begin{bmatrix} 1 & 2 &1 \\ 3 & 8 & 1 \\ 0& 4 &1 \end{bmatrix} = \begin{bmatrix} 1 & 2 &1 \\ 0 & 2 & -2 \\ 0& 4 &1 \end{bmatrix}  \\ \rm E_{21} \quad \quad \quad  \quad A \quad \quad \quad \quad \quad \quad A'
$$

시스템 A행렬의 $Row_1$과 $Row_3$은 그대로 보존되어야하므로 1 0 0 과 0 0 1을 넣고

$Row_1$에 -3배를 한후 $Row_2$에 더해준후 $Row_3$은 계산에 관여하지 않으므로 -3 1 0이 되는 것이다.

(참고로 행렬 곱 방식중 row의 선형결합 방식을 사용하는 것을 계속해서 상기하자)

2단계:

이번에는 $e_{32}$를 소거하기 위해 $e_{22}$을 피벗으로 사용하는 소거법 방식의 소거행렬을 만들어보자

$e_{32}$를 소거 해야됨으로 소거행렬은 $E_{32}$가 될 것이다.

$$
\begin{bmatrix} 1& 0& 0& \\ 0& 1& 0& \\ 0& -2& 1& \end{bmatrix} \begin{bmatrix} 1 & 2 &1 \\ 0 & 2 & -2 \\ 0& 4 &1 \end{bmatrix} = \begin{bmatrix} 1 & 2 &1 \\ 0 & 2 & -2 \\ 0& 0 &5 \end{bmatrix}  \\ \rm  E_{32} \quad \quad \quad  \quad \ A' \quad \quad \quad \quad \quad \quad \rm u
$$

마찬가지로 $Row_2$에 -2를 곱한후 $Row_3$에 더해야 하고 $Row_1$은 계산에 관여하지 않으므로 0 -2 1이 되는 것이고, 나머지는 그대로되어야하므로 1 0 0, 0 1 0이 된다.

이런 식으로 최종 u행렬을 만들 수 있다.

(참고로 identity matrix(단위 행렬)이 아닌 행렬을 왼쪽에서 곱하는 것과 오른쪽에서 곱하는 것의 결과는 완전히 다르다 → 교환법칙이 성립하지 않기 때문)

여태 까지 한 과정을 하나의 수식으로 정리해보면 다음과 같다.

$$
\rm E_{32} ( E_{21} A) = u \Rightarrow (E_{32} E_{21} ) A = u \Rightarrow EA =u
$$

$\rm E_{32}$와 $\rm E_{21}$의 곱셈한 결과를 $\rm E$로 묶은것이다.

행렬끼리의 곱셈은 **교환법칙은 성립하지 않지만, 결합법칙은 성립**한다.

## 결론

우리는 Lecture 2에서 소거법을 통해 시스템 행렬 A를 상삼각행렬 u로 만들고 후방대입법을 통해 해를 구하는 방법을 배웠고, 또 소거행렬을 통해 행렬곱으로 소거법을 하여 u행렬을 만드는 방법을 배웠다.