###### Class com.tebakgambar.question.EventQuestionActivity (com.tebakgambar.question.EventQuestionActivity)
.class public Lcom/tebakgambar/question/EventQuestionActivity;
.super Landroidx/fragment/app/e;
.source "EventQuestionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ly8/w$g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tebakgambar/question/EventQuestionActivity$u;,
        Lcom/tebakgambar/question/EventQuestionActivity$t;
    }
.end annotation


# static fields
.field private static F0:I = 0x0

.field private static G0:I = 0x4b0


# instance fields
.field A:Lcom/tebakgambar/component/CustomTextView;

.field A0:Lj8/z;

.field B:Lcom/tebakgambar/component/CustomTextView;

.field private B0:Landroid/net/Uri;

.field C:Lcom/tebakgambar/component/CustomTextView;

.field private C0:Ljava/lang/Runnable;

.field D:Lcom/tebakgambar/component/CustomTextView;

.field private D0:Ly8/w;

.field E:Lcom/tebakgambar/component/CustomTextView;

.field private E0:Lcom/tebakgambar/model/EventHint;

.field F:Lcom/tebakgambar/component/CustomTextView;

.field G:Lcom/tebakgambar/component/CustomTextView;

.field H:Landroid/widget/LinearLayout;

.field I:Landroid/widget/LinearLayout;

.field J:Landroid/widget/LinearLayout;

.field K:Landroid/widget/LinearLayout;

.field L:Landroid/widget/RelativeLayout;

.field M:Landroid/widget/RelativeLayout;

.field N:Landroid/widget/RelativeLayout;

.field O:Landroid/widget/RelativeLayout;

.field P:Landroid/widget/RelativeLayout;

.field Q:Landroid/widget/RelativeLayout;

.field R:Landroid/widget/RelativeLayout;

.field S:Landroid/view/View;

.field T:Landroidx/constraintlayout/widget/ConstraintLayout;

.field U:Landroid/widget/ScrollView;

.field V:Landroid/view/View;

.field W:Ljava/lang/String;

.field X:Ljava/lang/String;

.field Y:Ljava/lang/String;

.field Z:Lcom/tebakgambar/model/Question;

.field a0:Landroid/app/Dialog;

.field b0:Ljava/lang/String;

.field c0:I

.field d0:I

.field private e0:Lcom/tebakgambar/question/EventQuestionActivity$u;

.field f0:Ljava/lang/Boolean;

.field private g0:J

.field private h0:Lj8/k0;

.field private i0:Lj8/c0;

.field j0:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

.field k0:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

.field l0:Lcom/google/android/gms/ads/rewarded/RewardedAd;

.field m0:Z

.field n0:I

.field private o:Z

.field o0:I

.field private p:I

.field p0:Lcom/tebakgambar/model/ResultEventClue;

.field private q:Lcom/tebakgambar/model/FreeAnswer;

.field q0:Lcom/tebakgambar/model/ResultEvents;

.field r:Ljava/lang/Integer;

.field r0:Lcom/tebakgambar/model/SoalClue;

.field s:Lcom/tebakgambar/component/ClickableImageView;

.field s0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field t:Landroid/widget/ImageView;

.field t0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field u:Landroid/widget/ImageView;

.field u0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field v:Landroid/widget/ProgressBar;

.field v0:Landroid/widget/LinearLayout;

.field w:Lcom/tebakgambar/component/CustomImageView;

.field w0:Landroid/widget/LinearLayout;

.field x:Lcom/tebakgambar/component/CustomButton;

.field x0:Landroid/widget/LinearLayout;

.field y:Lcom/tebakgambar/component/CustomButton;

.field y0:Landroid/widget/LinearLayout;

.field z:Lcom/tebakgambar/component/CustomEditText;

.field z0:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/e;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->o:Z

    .line 3
    iput v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->p:I

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->r:Ljava/lang/Integer;

    .line 5
    iput v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->c0:I

    .line 6
    iput v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->d0:I

    .line 7
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->f0:Ljava/lang/Boolean;

    const-wide/16 v1, 0x0

    .line 8
    iput-wide v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->g0:J

    .line 9
    iput-boolean v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->m0:Z

    .line 10
    iput v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->n0:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->o0:I

    return-void
.end method

.method static synthetic A0(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->L0()V

    return-void
.end method

.method private synthetic A1(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->L1()V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic B0(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->S0()V

    return-void
.end method

.method private synthetic B1()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->D0:Ly8/w;

    iget-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->B0:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ly8/w;->B(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic C(Lcom/tebakgambar/question/EventQuestionActivity;Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->k1(Lcom/google/android/gms/ads/rewarded/RewardItem;)V

    return-void
.end method

.method static synthetic C0(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->R0()V

    return-void
.end method

.method private synthetic C1(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tebakgambar/network/TebakGambarApi;->b()Lcom/tebakgambar/network/TebakGambarApi$Interface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg5/u;

    invoke-virtual {p1}, Lg5/u;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tebakgambar/model/RequestHeader;->create(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/tebakgambar/network/TebakGambarApi$Interface;->useFreeAnswer(Ljava/util/Map;)Lwa/b;

    move-result-object p1

    new-instance v0, Lcom/tebakgambar/question/EventQuestionActivity$j;

    invoke-direct {v0, p0}, Lcom/tebakgambar/question/EventQuestionActivity$j;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    .line 2
    invoke-interface {p1, v0}, Lwa/b;->v3(Lwa/d;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic D(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->B1()V

    return-void
.end method

.method static synthetic D0(Lcom/tebakgambar/question/EventQuestionActivity;)Lj8/k0;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->h0:Lj8/k0;

    return-object p0
.end method

.method private synthetic D1(Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->t()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/u;

    invoke-virtual {v0}, Lg5/u;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 2
    new-instance v0, Lt8/v;

    invoke-direct {v0, p0, p1}, Lt8/v;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;Lcom/google/android/gms/tasks/Task;)V

    invoke-static {v0}, Lt1/h;->d(Ljava/util/concurrent/Callable;)Lt1/h;

    :cond_20
    return-void
.end method

.method public static synthetic E(Lcom/tebakgambar/question/EventQuestionActivity;Lcom/tebakgambar/question/EventQuestionActivity$t;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->l1(Lcom/tebakgambar/question/EventQuestionActivity$t;)V

    return-void
.end method

.method static synthetic E0(Lcom/tebakgambar/question/EventQuestionActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->B0:Landroid/net/Uri;

    return-object p1
.end method

.method private E1()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->I1()V

    .line 2
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->J1()V

    return-void
.end method

.method public static synthetic F(Lcom/tebakgambar/question/EventQuestionActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/tebakgambar/question/EventQuestionActivity;->p1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic F0(Lcom/tebakgambar/question/EventQuestionActivity;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->K1(I)V

    return-void
.end method

.method private F1()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->k0:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    new-instance v1, Lcom/tebakgambar/question/EventQuestionActivity$f;

    invoke-direct {v1, p0}, Lcom/tebakgambar/question/EventQuestionActivity$f;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    const-string v2, "ca-app-pub-7269282889157841/6758379613"

    invoke-virtual {v0, v2, v1}, Lj8/b;->w(Ljava/lang/String;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V

    return-void
.end method

.method public static synthetic G(Lcom/tebakgambar/question/EventQuestionActivity;Lcom/tebakgambar/question/EventQuestionActivity$t;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->m1(Lcom/tebakgambar/question/EventQuestionActivity$t;)V

    return-void
.end method

.method static synthetic G0(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->J1()V

    return-void
.end method

.method private G1()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->l0:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->c()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/tebakgambar/question/EventQuestionActivity$g;

    invoke-direct {v1, p0}, Lcom/tebakgambar/question/EventQuestionActivity$g;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ca-app-pub-7269282889157841/4068637097"

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->c(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    return-void
.end method

.method public static synthetic H(Lcom/tebakgambar/question/EventQuestionActivity;Lcom/google/android/gms/tasks/Task;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->b1(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method private H0()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lg5/s;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lg5/s;->W3(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lt8/i;

    invoke-direct {v1, p0}, Lt8/i;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private H1(Ljava/lang/String;Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->L:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->M:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->U:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 4
    :try_start_12
    invoke-static {p0}, Lv1/g;->w(Landroidx/fragment/app/e;)Lv1/j;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lv1/j;->x(Ljava/lang/String;)Lv1/d;

    move-result-object v0

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lv1/c;->U(Z)Lv1/c;

    move-result-object v0

    sget-object v1, Lb2/b;->r:Lb2/b;

    .line 7
    invoke-virtual {v0, v1}, Lv1/c;->H(Lb2/b;)Lv1/c;

    move-result-object v0

    const v1, 0x7f08015a

    .line 8
    invoke-virtual {v0, v1}, Lv1/c;->Q(I)Lv1/c;

    move-result-object v0

    new-instance v1, Lcom/tebakgambar/question/EventQuestionActivity$m;

    invoke-direct {v1, p0, p1, p2}, Lcom/tebakgambar/question/EventQuestionActivity$m;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;Ljava/lang/String;Z)V

    .line 9
    invoke-virtual {v0, v1}, Lv1/c;->N(Lt2/f;)Lv1/c;

    move-result-object p1

    iget-object p2, p0, Lcom/tebakgambar/question/EventQuestionActivity;->t:Landroid/widget/ImageView;

    .line 10
    invoke-virtual {p1, p2}, Lv1/c;->p(Landroid/widget/ImageView;)Lv2/j;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_3a} :catch_3a

    :catch_3a
    return-void
.end method

.method public static synthetic I(Lcom/tebakgambar/question/EventQuestionActivity;Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->a1(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private I0()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->R:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->e0:Lcom/tebakgambar/question/EventQuestionActivity$u;

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_f
    return-void
.end method

.method private I1()V
    .registers 4

    .line 1
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    new-instance v1, Lcom/tebakgambar/question/EventQuestionActivity$e;

    invoke-direct {v1, p0}, Lcom/tebakgambar/question/EventQuestionActivity$e;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    const-string v2, "ca-app-pub-7269282889157841/1760629611"

    invoke-virtual {v0, v2, v1}, Lj8/b;->w(Ljava/lang/String;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V

    return-void
.end method

.method public static synthetic J(Lcom/tebakgambar/question/EventQuestionActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->z1(Landroid/view/View;)V

    return-void
.end method

.method private J0()V
    .registers 8

    const-string v0, ""

    const-string v1, "0"

    .line 1
    :try_start_4
    iget-object v2, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f110005

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ly8/y;->Z(Landroid/content/Context;Ljava/lang/Integer;)V

    const-string v2, "input_method"

    .line 3
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 4
    iget-object v3, p0, Lcom/tebakgambar/question/EventQuestionActivity;->z:Lcom/tebakgambar/component/CustomEditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 5
    iget-object v2, p0, Lcom/tebakgambar/question/EventQuestionActivity;->J:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 6
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070193

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v2, v4, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 7
    iget-object v3, p0, Lcom/tebakgambar/question/EventQuestionActivity;->J:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget-object v2, p0, Lcom/tebakgambar/question/EventQuestionActivity;->W:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5d

    iget-object v2, p0, Lcom/tebakgambar/question/EventQuestionActivity;->X:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 9
    iget-object v2, p0, Lcom/tebakgambar/question/EventQuestionActivity;->w:Lcom/tebakgambar/component/CustomImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_62

    .line 10
    :cond_5d
    iget-object v2, p0, Lcom/tebakgambar/question/EventQuestionActivity;->V:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :goto_62
    iget-object v2, p0, Lcom/tebakgambar/question/EventQuestionActivity;->z:Lcom/tebakgambar/component/CustomEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "  "

    const-string v5, " "

    .line 12
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-direct {p0, v2}, Lcom/tebakgambar/question/EventQuestionActivity;->K0(Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_87

    const v0, 0x7f080156

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tebakgambar/question/EventQuestionActivity;->Q1(Ljava/lang/Integer;)V

    goto/16 :goto_17b

    .line 15
    :cond_87
    invoke-direct {p0, v2}, Lcom/tebakgambar/question/EventQuestionActivity;->K0(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_99

    const v0, 0x7f08013b

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tebakgambar/question/EventQuestionActivity;->Q1(Ljava/lang/Integer;)V

    goto/16 :goto_17b

    .line 17
    :cond_99
    invoke-direct {p0, v2}, Lcom/tebakgambar/question/EventQuestionActivity;->K0(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17b

    .line 18
    iget-object v2, p0, Lcom/tebakgambar/question/EventQuestionActivity;->r0:Lcom/tebakgambar/model/SoalClue;

    if-eqz v2, :cond_d2

    .line 19
    iget-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->p0:Lcom/tebakgambar/model/ResultEventClue;

    iget-object v1, v1, Lcom/tebakgambar/model/BaseEvent;->id:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tebakgambar/question/EventQuestionActivity;->u0:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/tebakgambar/question/EventQuestionActivity;->o0:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v2, v0}, Ly8/y;->g0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_112

    .line 20
    :cond_d2
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->Y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_109

    .line 21
    invoke-static {p0}, Ly8/y;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_101

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ly8/y;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->Z:Lcom/tebakgambar/model/Question;

    iget-object v1, v1, Lcom/tebakgambar/model/Question;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_105

    :cond_101
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->Z:Lcom/tebakgambar/model/Question;

    iget-object v0, v0, Lcom/tebakgambar/model/Question;->id:Ljava/lang/String;

    :goto_105
    invoke-static {p0, v0}, Ly8/y;->y0(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_112

    .line 22
    :cond_109
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->Y:Ljava/lang/String;

    iget-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->Z:Lcom/tebakgambar/model/Question;

    iget-object v1, v1, Lcom/tebakgambar/model/Question;->id:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Ly8/y;->w0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :goto_112
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 24
    new-instance v1, Lcom/tebakgambar/question/EventQuestionActivity$s;

    invoke-direct {v1, p0}, Lcom/tebakgambar/question/EventQuestionActivity$s;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const v0, 0x7f080133

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tebakgambar/question/EventQuestionActivity;->Q1(Ljava/lang/Integer;)V

    .line 26
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->I0()V

    .line 27
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->F:Lcom/tebakgambar/component/CustomTextView;

    iget v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->p:I

    iget v4, p0, Lcom/tebakgambar/question/EventQuestionActivity;->c0:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/tebakgambar/question/EventQuestionActivity;->d0:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v4}, Lcom/tebakgambar/component/CustomTextView;->i(II)V

    .line 28
    iget v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->p:I

    iget v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->c0:I

    iget v4, p0, Lcom/tebakgambar/question/EventQuestionActivity;->d0:I

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->p:I

    .line 29
    iget-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->Y:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v1, v0}, Ly8/y;->h0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 30
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 31
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 32
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v1, 0x2

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    const/4 v1, 0x3

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 35
    new-instance v1, Lcom/tebakgambar/question/EventQuestionActivity$b;

    invoke-direct {v1, p0}, Lcom/tebakgambar/question/EventQuestionActivity$b;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 36
    iget-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->S:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_176} :catch_177

    goto :goto_17b

    :catch_177
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_17b
    :goto_17b
    return-void
.end method

.method private J1()V
    .registers 3

    .line 1
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    new-instance v1, Lcom/tebakgambar/question/EventQuestionActivity$d;

    invoke-direct {v1, p0}, Lcom/tebakgambar/question/EventQuestionActivity$d;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    invoke-virtual {v0, v1}, Lj8/b;->v(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    return-void
.end method

.method public static synthetic K(Lcom/tebakgambar/question/EventQuestionActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/tebakgambar/question/EventQuestionActivity;->s1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private K0(Ljava/lang/String;)I
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->Z:Lcom/tebakgambar/model/Question;

    iget-object v1, v0, Lcom/tebakgambar/model/Question;->answer:Ljava/lang/String;

    const-string v2, "\\s+"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tebakgambar/model/Question;->answer:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->Z:Lcom/tebakgambar/model/Question;

    iget-object v0, v0, Lcom/tebakgambar/model/Question;->answer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_22
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->Z:Lcom/tebakgambar/model/Question;

    iget-object v0, v0, Lcom/tebakgambar/model/Question;->answer:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_2d
    if-ge v4, v1, :cond_5c

    aget-object v5, v0, v4

    .line 6
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5b

    iget-object v5, p0, Lcom/tebakgambar/question/EventQuestionActivity;->Z:Lcom/tebakgambar/model/Question;

    iget-object v5, v5, Lcom/tebakgambar/model/Question;->answer:Ljava/lang/String;

    invoke-static {v5, p1}, Ly8/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_58

    goto :goto_5b

    :cond_58
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_5b
    :goto_5b
    return v2

    :cond_5c
    const/4 p1, -0x1

    return p1
.end method

.method private K1(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->E0:Lcom/tebakgambar/model/EventHint;

    invoke-virtual {p1, v0}, Lcom/tebakgambar/model/EventHint;->addChance(I)V

    .line 2
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->a2()V

    goto :goto_12

    :cond_c
    const/4 v0, 0x2

    if-ne p1, v0, :cond_12

    .line 3
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->H0()V

    :cond_12
    :goto_12
    return-void
.end method

.method public static synthetic L(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->L1()V

    return-void
.end method

.method private L0()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->p0:Lcom/tebakgambar/model/ResultEventClue;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->p0:Lcom/tebakgambar/model/ResultEventClue;

    iget-object v0, v0, Lcom/tebakgambar/model/BaseEvent;->id:Ljava/lang/String;

    invoke-static {p0, v0}, Ly8/y;->x(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->u0:Ljava/util/ArrayList;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_12

    goto :goto_19

    .line 3
    :catch_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->u0:Ljava/util/ArrayList;

    .line 4
    :goto_19
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->P:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->A:Lcom/tebakgambar/component/CustomTextView;

    const-string v2, " clue kamu "

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->P:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->u0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4e

    .line 8
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tebakgambar/QuotesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->p0:Lcom/tebakgambar/model/ResultEventClue;

    const-string v2, "event_clue"

    .line 9
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_e9

    .line 12
    :cond_4e
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->u0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    const/16 v3, 0x8

    const/4 v4, 0x1

    if-le v0, v2, :cond_94

    .line 13
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->p0:Lcom/tebakgambar/model/ResultEventClue;

    iget-object v0, v0, Lcom/tebakgambar/model/ResultEventClue;->soal_clue:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tebakgambar/question/EventQuestionActivity;->u0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/SoalClue;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->r0:Lcom/tebakgambar/model/SoalClue;

    .line 14
    iget-object v0, v0, Lcom/tebakgambar/model/SoalClue;->clue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/Clue;

    iget-object v0, v0, Lcom/tebakgambar/model/Clue;->soal_image_url:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lcom/tebakgambar/question/EventQuestionActivity;->H1(Ljava/lang/String;Z)V

    .line 15
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->z:Lcom/tebakgambar/component/CustomEditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->x:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->E:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_e9

    .line 18
    :cond_94
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->p0:Lcom/tebakgambar/model/ResultEventClue;

    iget-object v0, v0, Lcom/tebakgambar/model/ResultEventClue;->soal_clue:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tebakgambar/question/EventQuestionActivity;->u0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/SoalClue;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->r0:Lcom/tebakgambar/model/SoalClue;

    .line 19
    new-instance v0, Lcom/tebakgambar/model/Question;

    invoke-direct {v0}, Lcom/tebakgambar/model/Question;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->Z:Lcom/tebakgambar/model/Question;

    .line 20
    iget-object v2, p0, Lcom/tebakgambar/question/EventQuestionActivity;->r0:Lcom/tebakgambar/model/SoalClue;

    iget-object v2, v2, Lcom/tebakgambar/model/SoalClue;->clue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tebakgambar/model/Clue;

    iget-object v2, v2, Lcom/tebakgambar/model/Clue;->jawaban:Ljava/lang/String;

    iput-object v2, v0, Lcom/tebakgambar/model/Question;->answer:Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->r0:Lcom/tebakgambar/model/SoalClue;

    iget-object v0, v0, Lcom/tebakgambar/model/SoalClue;->clue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/Clue;

    iget-object v0, v0, Lcom/tebakgambar/model/Clue;->soal_image_url:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/tebakgambar/question/EventQuestionActivity;->H1(Ljava/lang/String;Z)V

    .line 22
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->z:Lcom/tebakgambar/component/CustomEditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 23
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->x:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 24
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->E:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_e9
    return-void
.end method

.method private L1()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    :try_start_1
    new-instance v1, Lt8/q;

    invoke-direct {v1, p0}, Lt8/q;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/tebakgambar/question/EventQuestionActivity;->N0(ZLjava/lang/Runnable;)V
    :try_end_9
    .catch Ly8/n; {:try_start_1 .. :try_end_9} :catch_a

    goto :goto_1e

    :catch_a
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    new-instance v1, Lt8/n;

    invoke-direct {v1, p0}, Lt8/n;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    iput-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->C0:Ljava/lang/Runnable;

    .line 4
    invoke-virtual {v0}, Ly8/n;->a()[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x37

    invoke-static {p0, v0, v1}, Landroidx/core/app/b;->t(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_1e
    return-void
.end method

.method public static synthetic M(Lcom/tebakgambar/question/EventQuestionActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->y1(Landroid/view/View;)V

    return-void
.end method

.method private M0()V
    .registers 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->m0:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_84

    .line 3
    iget-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->H:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    :try_start_f
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "event_clue"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/ResultEventClue;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->p0:Lcom/tebakgambar/model/ResultEventClue;

    .line 5
    iget-object v1, v0, Lcom/tebakgambar/model/BaseEvent;->ads_url:Ljava/lang/String;

    iput-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->X:Ljava/lang/String;

    .line 6
    iget-object v0, v0, Lcom/tebakgambar/model/BaseEvent;->ads_banner:Ljava/lang/String;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->W:Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_25} :catch_25

    .line 7
    :catch_25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->s0:Ljava/util/ArrayList;

    .line 8
    iget-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->w0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->s0:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->x0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->s0:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->y0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->s0:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->z0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->t0:Ljava/util/ArrayList;

    const v1, 0x7f0a0140

    .line 13
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->t0:Ljava/util/ArrayList;

    const v1, 0x7f0a0141

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->t0:Ljava/util/ArrayList;

    const v1, 0x7f0a0142

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->t0:Ljava/util/ArrayList;

    const v1, 0x7f0a0143

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8c

    .line 17
    :cond_84
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->H:Landroid/widget/LinearLayout;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 18
    :goto_8c
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/n;->m()Landroidx/fragment/app/w;

    move-result-object v0

    .line 19
    new-instance v1, Lj8/k0;

    invoke-direct {v1}, Lj8/k0;-><init>()V

    const v3, 0x7f0a0120

    .line 20
    invoke-virtual {v0, v3, v1}, Landroidx/fragment/app/w;->m(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 21
    invoke-virtual {v0}, Landroidx/fragment/app/w;->f()I

    .line 22
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->W:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e8

    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->X:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e8

    .line 23
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->V:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 24
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->w:Lcom/tebakgambar/component/CustomImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    :try_start_bd
    invoke-static {p0}, Lv1/g;->w(Landroidx/fragment/app/e;)Lv1/j;

    move-result-object v0

    iget-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->W:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v1}, Lv1/j;->x(Ljava/lang/String;)Lv1/d;

    move-result-object v0

    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Lv1/c;->U(Z)Lv1/c;

    move-result-object v0

    sget-object v1, Lb2/b;->r:Lb2/b;

    .line 28
    invoke-virtual {v0, v1}, Lv1/c;->H(Lb2/b;)Lv1/c;

    move-result-object v0

    const v1, 0x7f080058

    .line 29
    invoke-virtual {v0, v1}, Lv1/c;->Q(I)Lv1/c;

    move-result-object v0

    new-instance v1, Lcom/tebakgambar/question/EventQuestionActivity$a;

    invoke-direct {v1, p0}, Lcom/tebakgambar/question/EventQuestionActivity$a;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    .line 30
    invoke-virtual {v0, v1}, Lv1/c;->N(Lt2/f;)Lv1/c;

    move-result-object v0

    iget-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->w:Lcom/tebakgambar/component/CustomImageView;

    .line 31
    invoke-virtual {v0, v1}, Lv1/c;->p(Landroid/widget/ImageView;)Lv2/j;
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_e7} :catch_f2

    goto :goto_f2

    .line 32
    :cond_e8
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->V:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->w:Lcom/tebakgambar/component/CustomImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    :catch_f2
    :goto_f2
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->F:Lcom/tebakgambar/component/CustomTextView;

    iget v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->p:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private M1()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->O:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->N:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->O:Landroid/widget/RelativeLayout;

    new-instance v1, Lt8/e;

    invoke-direct {v1, p0}, Lt8/e;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic N(Lcom/tebakgambar/question/EventQuestionActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->j1(Landroid/view/View;)V

    return-void
.end method

.method private N0(ZLjava/lang/Runnable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ly8/n;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    const v1, 0x7f0a0120

    invoke-virtual {v0, v1}, Landroidx/fragment/app/n;->h0(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lj8/k0;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->h0:Lj8/k0;

    if-nez v0, :cond_30

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/n;->m()Landroidx/fragment/app/w;

    move-result-object v0

    .line 3
    new-instance v2, Lj8/k0;

    invoke-direct {v2}, Lj8/k0;-><init>()V

    .line 4
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/w;->m(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/w;->f()I

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/n;->h0(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lj8/k0;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->h0:Lj8/k0;

    .line 7
    :cond_30
    new-instance v0, Lcom/tebakgambar/question/EventQuestionActivity$c;

    invoke-direct {v0, p0, p2}, Lcom/tebakgambar/question/EventQuestionActivity$c;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;Ljava/lang/Runnable;)V

    new-instance p2, Lt1/e;

    invoke-direct {p2}, Lt1/e;-><init>()V

    .line 8
    invoke-virtual {p2}, Lt1/e;->d()Lt1/c;

    move-result-object p2

    .line 9
    invoke-static {p1, p0, v0, p2}, Ly8/s;->d(ZLandroid/app/Activity;Ly8/s$a;Lt1/c;)V

    return-void
.end method

.method private N1()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->s:Lcom/tebakgambar/component/ClickableImageView;

    new-instance v1, Lt8/b;

    invoke-direct {v1, p0}, Lt8/b;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    invoke-static {v1}, Ly8/m;->b(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tebakgambar/component/ClickableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic O(Lcom/tebakgambar/question/EventQuestionActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->x1(Landroid/view/View;)V

    return-void
.end method

.method private O0()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lg5/s;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lg5/s;->W3(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lt8/j;

    invoke-direct {v1, p0}, Lt8/j;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private O1()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->l0:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-static {v0}, Lj8/b;->o(Lcom/google/android/gms/ads/rewarded/RewardedAd;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->l0:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    new-instance v1, Lt8/h;

    invoke-direct {v1, p0}, Lt8/h;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->e(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V

    return-void

    .line 3
    :cond_13
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->k0:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-static {v0}, Lj8/b;->n(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->k0:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->f(Landroid/app/Activity;)V

    return-void

    :cond_21
    const v0, 0x7f1201e0

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static synthetic P(Lcom/tebakgambar/question/EventQuestionActivity;Lcom/google/android/gms/tasks/Task;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->d1(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method private P1(Lcom/tebakgambar/question/EventQuestionActivity$t;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-nez v0, :cond_38

    .line 2
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 5
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 6
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_43

    .line 7
    :cond_38
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 8
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 9
    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->x:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 10
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 11
    new-instance v1, Lcom/tebakgambar/question/b;

    invoke-direct {v1, p0, p1}, Lcom/tebakgambar/question/b;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;Lcom/tebakgambar/question/EventQuestionActivity$t;)V

    sget p1, Lcom/tebakgambar/question/EventQuestionActivity;->F0:I

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic Q(Lcom/tebakgambar/question/EventQuestionActivity;Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->c1(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private Q0()Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->p0:Lcom/tebakgambar/model/ResultEventClue;

    const-string v1, " "

    if-eqz v0, :cond_1e

    iget-object v0, v0, Lcom/tebakgambar/model/BaseEvent;->extra_hashtag:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tebakgambar/question/EventQuestionActivity;->p0:Lcom/tebakgambar/model/ResultEventClue;

    iget-object v2, v2, Lcom/tebakgambar/model/BaseEvent;->extra_hashtag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_1e
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->q0:Lcom/tebakgambar/model/ResultEvents;

    if-eqz v0, :cond_3a

    iget-object v0, v0, Lcom/tebakgambar/model/BaseEvent;->extra_hashtag:Ljava/lang/String;

    if-eqz v0, :cond_3a

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tebakgambar/question/EventQuestionActivity;->q0:Lcom/tebakgambar/model/ResultEvents;

    iget-object v2, v2, Lcom/tebakgambar/model/BaseEvent;->extra_hashtag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3a
    const-string v0, ""

    return-object v0
.end method

.method public static synthetic R(Lcom/tebakgambar/question/EventQuestionActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/tebakgambar/question/EventQuestionActivity;->u1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private R0()V
    .registers 2

    .line 1
    new-instance v0, Lt8/s;

    invoke-direct {v0, p0}, Lt8/s;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    invoke-static {v0}, Lt1/h;->d(Ljava/util/concurrent/Callable;)Lt1/h;

    return-void
.end method

.method private R1()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->E0:Lcom/tebakgambar/model/EventHint;

    invoke-virtual {v0}, Lcom/tebakgambar/model/EventHint;->isNoHintAvailable()Z

    move-result v0

    const v1, 0x7f12005d

    const v2, 0x7f1200b6

    const v3, 0x7f1200b7

    const v4, 0x7f1200b5

    if-eqz v0, :cond_49

    .line 2
    new-instance v0, Lj8/f1;

    invoke-direct {v0, p0}, Lj8/f1;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lj8/f1;->k(Ljava/lang/CharSequence;)Lj8/f1;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lt8/a;

    invoke-direct {v4, p0}, Lt8/a;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    invoke-virtual {v0, v3, v4}, Lj8/f1;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/f1;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lt8/y;

    invoke-direct {v3, p0}, Lt8/y;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    invoke-virtual {v0, v2, v3}, Lj8/f1;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/f1;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lt8/z;->o:Lt8/z;

    invoke-virtual {v0, v1, v2}, Lj8/f1;->f(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/f1;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_8d

    .line 8
    :cond_49
    new-instance v0, Lj8/h0;

    invoke-direct {v0, p0}, Lj8/h0;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lj8/h0;->n(Ljava/lang/CharSequence;)Lj8/h0;

    move-result-object v0

    .line 10
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lt8/l;

    invoke-direct {v4, p0}, Lt8/l;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    invoke-virtual {v0, v3, v4}, Lj8/h0;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/h0;

    move-result-object v0

    .line 11
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lt8/w;

    invoke-direct {v3, p0}, Lt8/w;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    invoke-virtual {v0, v2, v3}, Lj8/h0;->f(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/h0;

    move-result-object v0

    const v2, 0x7f12004d

    .line 12
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lt8/x;

    invoke-direct {v3, p0}, Lt8/x;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    invoke-virtual {v0, v2, v3}, Lj8/h0;->g(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/h0;

    move-result-object v0

    .line 13
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lt8/a0;->o:Lt8/a0;

    invoke-virtual {v0, v1, v2}, Lj8/h0;->h(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lj8/h0;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_8d
    return-void
.end method

.method public static synthetic S(Lcom/tebakgambar/question/EventQuestionActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/tebakgambar/question/EventQuestionActivity;->n1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private S0()V
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/Henson$b;->e()Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x24000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private S1()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->E0:Lcom/tebakgambar/model/EventHint;

    invoke-virtual {v0}, Lcom/tebakgambar/model/EventHint;->currentHint()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->E0:Lcom/tebakgambar/model/EventHint;

    invoke-virtual {v1}, Lcom/tebakgambar/model/EventHint;->isNoHintAvailable()Z

    move-result v1

    if-eqz v1, :cond_15

    const v0, 0x7f12010d

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_15
    invoke-virtual {p0, v0}, Lcom/tebakgambar/question/EventQuestionActivity;->U1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic T(Lcom/tebakgambar/question/EventQuestionActivity;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->w1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private T0()V
    .registers 3

    .line 1
    new-instance v0, Lcom/tebakgambar/question/EventQuestionActivity$q;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/tebakgambar/question/EventQuestionActivity$q;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;Z)V

    .line 2
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/activity/OnBackPressedDispatcher;->b(Landroidx/activity/g;)V

    return-void
.end method

.method private T1()Z
    .registers 3

    .line 1
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    invoke-virtual {v0}, Lj8/b;->p()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    .line 2
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lj8/b;->A(Landroid/app/Activity;)V

    return v1

    .line 3
    :cond_13
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->j0:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-static {v0}, Lj8/b;->n(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->j0:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->f(Landroid/app/Activity;)V

    return v1

    :cond_21
    const v0, 0x7f1201e0

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1
.end method

.method public static synthetic U(Lcom/tebakgambar/question/EventQuestionActivity;Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->C1(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private U0()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080106

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 3
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Ly8/y;->l(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Ly8/y;->l(Landroid/content/Context;Ljava/lang/Float;)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x1

    .line 4
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 6
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 7
    iget-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->G:Lcom/tebakgambar/component/CustomTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic V(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->r1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private V0(I)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->e0:Lcom/tebakgambar/question/EventQuestionActivity$u;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 2
    :cond_7
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->R:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    new-instance v0, Lcom/tebakgambar/question/EventQuestionActivity$u;

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v4, p1

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/tebakgambar/question/EventQuestionActivity$u;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;JJ)V

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->e0:Lcom/tebakgambar/question/EventQuestionActivity$u;

    .line 4
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private V1()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-nez v0, :cond_35

    .line 2
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 5
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 6
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_40

    .line 7
    :cond_35
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 8
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 9
    :cond_40
    :goto_40
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lo8/m0;->u0(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo8/m0;

    move-result-object v0

    .line 10
    iget-object v1, v0, Lo8/m0;->P:Landroid/widget/ImageView;

    new-instance v2, Lt8/c;

    invoke-direct {v2, p0}, Lt8/c;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v1, v0, Lo8/m0;->Q:Lcom/tebakgambar/component/CustomButton;

    new-instance v2, Lt8/d0;

    invoke-direct {v2, p0}, Lt8/d0;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    invoke-virtual {v1, v2}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v1, v0, Lo8/m0;->R:Lcom/tebakgambar/component/CustomButton;

    new-instance v2, Lt8/c0;

    invoke-direct {v2, p0}, Lt8/c0;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    invoke-virtual {v1, v2}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v1, v0, Lo8/m0;->S:Lcom/tebakgambar/component/CustomButton;

    new-instance v2, Lt8/f;

    invoke-direct {v2, p0}, Lt8/f;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    invoke-virtual {v1, v2}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->S()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 15
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static synthetic W(Lcom/tebakgambar/question/EventQuestionActivity;Lcom/google/android/gms/tasks/Task;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->D1(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method private W0()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->T:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lt8/g;

    invoke-direct {v1, p0}, Lt8/g;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private W1()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/tebakgambar/question/EventQuestionActivity$t;->a(I)Lcom/tebakgambar/question/EventQuestionActivity$t;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tebakgambar/question/EventQuestionActivity;->P1(Lcom/tebakgambar/question/EventQuestionActivity$t;)V

    return-void
.end method

.method public static synthetic X(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->o1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private X0()V
    .registers 4

    .line 1
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a0164

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->t:Landroid/widget/ImageView;

    const v0, 0x7f0a013b

    .line 6
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomImageView;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->w:Lcom/tebakgambar/component/CustomImageView;

    const v0, 0x7f0a0120

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->V:Landroid/view/View;

    const v0, 0x7f0a015e

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->T:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0a0163

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->u:Landroid/widget/ImageView;

    const v0, 0x7f0a0079

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomButton;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->x:Lcom/tebakgambar/component/CustomButton;

    const v0, 0x7f0a0098

    .line 11
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomButton;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->y:Lcom/tebakgambar/component/CustomButton;

    const v0, 0x7f0a0199

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->H:Landroid/widget/LinearLayout;

    const v0, 0x7f0a019b

    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->I:Landroid/widget/LinearLayout;

    const v0, 0x7f0a018e

    .line 14
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->J:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0107

    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomEditText;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->z:Lcom/tebakgambar/component/CustomEditText;

    const v0, 0x7f0a0225

    .line 16
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->L:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a021b

    .line 17
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->M:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a024f

    .line 18
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->U:Landroid/widget/ScrollView;

    const v0, 0x7f0a022a

    .line 19
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->N:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0234

    .line 20
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->O:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a021a

    .line 21
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->P:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a022e

    .line 22
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->Q:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a02b3

    .line 23
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomTextView;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->A:Lcom/tebakgambar/component/CustomTextView;

    const v0, 0x7f0a02c0

    .line 24
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomTextView;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->B:Lcom/tebakgambar/component/CustomTextView;

    const v0, 0x7f0a02dc

    .line 25
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomTextView;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->C:Lcom/tebakgambar/component/CustomTextView;

    const v0, 0x7f0a02c1

    .line 26
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomTextView;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->D:Lcom/tebakgambar/component/CustomTextView;

    const v0, 0x7f0a02c3

    .line 27
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomTextView;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->E:Lcom/tebakgambar/component/CustomTextView;

    const v0, 0x7f0a021d

    .line 28
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->K:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0211

    .line 29
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->v:Landroid/widget/ProgressBar;

    const v0, 0x7f0a0152

    .line 30
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/ClickableImageView;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->s:Lcom/tebakgambar/component/ClickableImageView;

    const v0, 0x7f0a0304

    .line 31
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomTextView;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->F:Lcom/tebakgambar/component/CustomTextView;

    const v0, 0x7f0a02e4

    .line 32
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/component/CustomTextView;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->G:Lcom/tebakgambar/component/CustomTextView;

    const v0, 0x7f0a0238

    .line 33
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->R:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a031d

    .line 34
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->S:Landroid/view/View;

    const v0, 0x7f0a0189

    .line 35
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->v0:Landroid/widget/LinearLayout;

    const v0, 0x7f0a018a

    .line 36
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->w0:Landroid/widget/LinearLayout;

    const v0, 0x7f0a018b

    .line 37
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->x0:Landroid/widget/LinearLayout;

    const v0, 0x7f0a018c

    .line 38
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->y0:Landroid/widget/LinearLayout;

    const v0, 0x7f0a018d

    .line 39
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->z0:Landroid/widget/LinearLayout;

    .line 40
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->z:Lcom/tebakgambar/component/CustomEditText;

    new-instance v1, Lcom/tebakgambar/question/EventQuestionActivity$o;

    invoke-direct {v1, p0}, Lcom/tebakgambar/question/EventQuestionActivity$o;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->z:Lcom/tebakgambar/component/CustomEditText;

    new-instance v1, Lcom/tebakgambar/question/EventQuestionActivity$p;

    invoke-direct {v1, p0}, Lcom/tebakgambar/question/EventQuestionActivity$p;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    invoke-virtual {v0, v1}, Lcom/tebakgambar/component/CustomEditText;->setBackPressedListener(Lcom/tebakgambar/component/CustomEditText$a;)V

    .line 42
    new-instance v0, Lcom/tebakgambar/model/Question;

    invoke-direct {v0}, Lcom/tebakgambar/model/Question;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->Z:Lcom/tebakgambar/model/Question;

    .line 43
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->x:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, p0}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->N1()V

    return-void
.end method

.method public static synthetic Y(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->Z1()V

    return-void
.end method

.method private Y0()V
    .registers 9

    .line 1
    invoke-static {p0}, Ly8/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    .line 2
    :try_start_7
    new-instance v1, Lt8/p;

    invoke-direct {v1, p0}, Lt8/p;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/tebakgambar/question/EventQuestionActivity;->N0(ZLjava/lang/Runnable;)V
    :try_end_f
    .catch Ly8/n; {:try_start_7 .. :try_end_f} :catch_10

    goto :goto_43

    :catch_10
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4
    new-instance v1, Lt8/r;

    invoke-direct {v1, p0}, Lt8/r;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    iput-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->C0:Ljava/lang/Runnable;

    .line 5
    invoke-virtual {v0}, Ly8/n;->a()[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x37

    invoke-static {p0, v0, v1}, Landroidx/core/app/b;->t(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_43

    .line 6
    :cond_25
    new-instance v0, Lj8/c0;

    const v4, 0x7f1300ec

    const/4 v5, 0x1

    const v1, 0x7f1200e7

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v1, 0x7f0701e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lj8/c0;-><init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->i0:Lj8/c0;

    .line 7
    invoke-virtual {v0}, Lj8/c0;->show()V

    :goto_43
    return-void
.end method

.method private Y1(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static synthetic Z(Lcom/tebakgambar/question/EventQuestionActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->v1(Landroid/view/View;)V

    return-void
.end method

.method private Z1()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    :try_start_1
    new-instance v1, Lt8/m;

    invoke-direct {v1, p0}, Lt8/m;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    invoke-direct {p0, v0, v1}, Lcom/tebakgambar/question/EventQuestionActivity;->N0(ZLjava/lang/Runnable;)V
    :try_end_9
    .catch Ly8/n; {:try_start_1 .. :try_end_9} :catch_a

    goto :goto_1e

    :catch_a
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    new-instance v1, Lt8/o;

    invoke-direct {v1, p0}, Lt8/o;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    iput-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->C0:Ljava/lang/Runnable;

    .line 4
    invoke-virtual {v0}, Ly8/n;->a()[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x37

    invoke-static {p0, v0, v1}, Landroidx/core/app/b;->t(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_1e
    return-void
.end method

.method public static synthetic a0(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->g1()V

    return-void
.end method

.method private synthetic a1(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tebakgambar/network/TebakGambarApi;->b()Lcom/tebakgambar/network/TebakGambarApi$Interface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg5/u;

    invoke-virtual {p1}, Lg5/u;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tebakgambar/model/RequestHeader;->create(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/tebakgambar/network/TebakGambarApi$Interface;->addProgress(Ljava/util/Map;)Lwa/b;

    move-result-object p1

    new-instance v0, Lcom/tebakgambar/question/EventQuestionActivity$i;

    invoke-direct {v0, p0}, Lcom/tebakgambar/question/EventQuestionActivity$i;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    .line 2
    invoke-interface {p1, v0}, Lwa/b;->v3(Lwa/d;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private a2()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->E0:Lcom/tebakgambar/model/EventHint;

    invoke-virtual {v0}, Lcom/tebakgambar/model/EventHint;->isHintChanceEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->R1()V

    goto :goto_14

    .line 3
    :cond_c
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->E0:Lcom/tebakgambar/model/EventHint;

    invoke-virtual {v0}, Lcom/tebakgambar/model/EventHint;->addHint()V

    .line 4
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->S1()V

    :goto_14
    return-void
.end method

.method public static synthetic b0(Lcom/tebakgambar/question/EventQuestionActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->i1(Landroid/view/View;)V

    return-void
.end method

.method private synthetic b1(Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->t()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/u;

    invoke-virtual {v0}, Lg5/u;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 2
    new-instance v0, Lt8/t;

    invoke-direct {v0, p0, p1}, Lt8/t;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;Lcom/google/android/gms/tasks/Task;)V

    invoke-static {v0}, Lt1/h;->d(Ljava/util/concurrent/Callable;)Lt1/h;

    :cond_20
    return-void
.end method

.method private b2(Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->P0()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    new-instance v1, Lcom/tebakgambar/question/EventQuestionActivity$k;

    invoke-direct {v1, p0}, Lcom/tebakgambar/question/EventQuestionActivity$k;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    .line 3
    invoke-static {v0}, Lv1/g;->v(Landroid/content/Context;)Lv1/j;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lv1/j;->x(Ljava/lang/String;)Lv1/d;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v1}, Lv1/c;->N(Lt2/f;)Lv1/c;

    move-result-object p1

    sget-object v0, Lb2/b;->q:Lb2/b;

    .line 6
    invoke-virtual {p1, v0}, Lv1/c;->H(Lb2/b;)Lv1/c;

    move-result-object p1

    const v0, 0x7f08010a

    .line 7
    invoke-virtual {p1, v0}, Lv1/c;->J(I)Lv1/c;

    move-result-object p1

    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->s:Lcom/tebakgambar/component/ClickableImageView;

    .line 8
    invoke-virtual {p1, v0}, Lv1/c;->p(Landroid/widget/ImageView;)Lv2/j;

    return-void
.end method

.method public static synthetic c0(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->h1()V

    return-void
.end method

.method private synthetic c1(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tebakgambar/network/TebakGambarApi;->b()Lcom/tebakgambar/network/TebakGambarApi$Interface;

    move-result-object v0

    sget-object v1, Lcom/tebakgambar/model/enums/QuestionType;->EVENT:Lcom/tebakgambar/model/enums/QuestionType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg5/u;

    invoke-virtual {p1}, Lg5/u;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tebakgambar/model/RequestHeader;->create(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/tebakgambar/network/TebakGambarApi$Interface;->getFreeAnswer(Ljava/lang/String;Ljava/util/Map;)Lwa/b;

    move-result-object p1

    new-instance v0, Lcom/tebakgambar/question/EventQuestionActivity$h;

    invoke-direct {v0, p0}, Lcom/tebakgambar/question/EventQuestionActivity$h;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    .line 2
    invoke-interface {p1, v0}, Lwa/b;->v3(Lwa/d;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private c2()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lg5/s;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lg5/s;->W3(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lt8/k;

    invoke-direct {v1, p0}, Lt8/k;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private synthetic d1(Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->t()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/u;

    invoke-virtual {v0}, Lg5/u;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 2
    new-instance v0, Lt8/u;

    invoke-direct {v0, p0, p1}, Lt8/u;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;Lcom/google/android/gms/tasks/Task;)V

    invoke-static {v0}, Lt1/h;->d(Ljava/util/concurrent/Callable;)Lt1/h;

    :cond_20
    return-void
.end method

.method public static synthetic e0(Lcom/tebakgambar/question/EventQuestionActivity;)Ljava/lang/Object;
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->e1()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private synthetic e1()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->r:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_14

    .line 3
    iget-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->r:Ljava/lang/Integer;

    const-string v2, "random"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_14
    iget-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->Y:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 5
    invoke-static {p0}, Ly8/y;->Q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    .line 6
    :cond_23
    iget-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->Y:Ljava/lang/String;

    invoke-static {p0, v1}, Ly8/y;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    :goto_29
    invoke-static {}, Lcom/tebakgambar/network/TebakGambarApi;->b()Lcom/tebakgambar/network/TebakGambarApi$Interface;

    move-result-object v2

    iget-object v3, p0, Lcom/tebakgambar/question/EventQuestionActivity;->Y:Ljava/lang/String;

    invoke-interface {v2, v3, v1, v0}, Lcom/tebakgambar/network/TebakGambarApi$Interface;->getEventSoal(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lwa/b;

    move-result-object v0

    new-instance v1, Lcom/tebakgambar/question/EventQuestionActivity$l;

    invoke-direct {v1, p0}, Lcom/tebakgambar/question/EventQuestionActivity$l;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    invoke-interface {v0, v1}, Lwa/b;->v3(Lwa/d;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic f0(Lcom/tebakgambar/question/EventQuestionActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->A1(Landroid/view/View;)V

    return-void
.end method

.method private synthetic f1(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->V1()V

    return-void
.end method

.method public static synthetic g0(Lcom/tebakgambar/question/EventQuestionActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/tebakgambar/question/EventQuestionActivity;->q1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic g1()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->D0:Ly8/w;

    iget-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->B0:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ly8/w;->y(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic h0(Lcom/tebakgambar/question/EventQuestionActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->f1(Landroid/view/View;)V

    return-void
.end method

.method private synthetic h1()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->D0:Ly8/w;

    iget-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->B0:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ly8/w;->A(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic i0(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->Y0()V

    return-void
.end method

.method private synthetic i1(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->S1()V

    return-void
.end method

.method static synthetic j0(Lcom/tebakgambar/question/EventQuestionActivity;Ljava/lang/String;Z)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tebakgambar/question/EventQuestionActivity;->H1(Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic j1(Landroid/view/View;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->P0()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-static {p1}, Ly8/y;->W(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_18

    const p1, 0x7f1200aa

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->Y1(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_18
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->q:Lcom/tebakgambar/model/FreeAnswer;

    iget p1, p1, Lcom/tebakgambar/model/FreeAnswer;->qty:I

    const/4 v0, 0x1

    if-lt p1, v0, :cond_23

    .line 5
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->c2()V

    return-void

    .line 6
    :cond_23
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->O1()V

    return-void
.end method

.method static synthetic k0(Lcom/tebakgambar/question/EventQuestionActivity;)J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->g0:J

    return-wide v0
.end method

.method private synthetic k1(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .registers 2

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->o:Z

    return-void
.end method

.method static synthetic l0(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->I1()V

    return-void
.end method

.method private synthetic l1(Lcom/tebakgambar/question/EventQuestionActivity$t;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->x:Lcom/tebakgambar/component/CustomButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3
    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity$t;->c:Ljava/lang/Runnable;

    if-eqz p1, :cond_12

    .line 4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_12
    return-void
.end method

.method static synthetic m0(Lcom/tebakgambar/question/EventQuestionActivity;J)J
    .registers 3

    .line 1
    iput-wide p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->g0:J

    return-wide p1
.end method

.method private synthetic m1(Lcom/tebakgambar/question/EventQuestionActivity$t;)V
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p1, Lcom/tebakgambar/question/EventQuestionActivity$t;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ly8/y;->Z(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0060

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0154

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 4
    invoke-virtual {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->P0()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lv1/g;->v(Landroid/content/Context;)Lv1/j;

    move-result-object v2

    iget v3, p1, Lcom/tebakgambar/question/EventQuestionActivity$t;->a:I

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lv1/j;->w(Ljava/lang/Integer;)Lv1/d;

    move-result-object v2

    const/4 v3, 0x1

    .line 6
    invoke-virtual {v2, v3}, Lv1/c;->U(Z)Lv1/c;

    move-result-object v2

    sget-object v3, Lb2/b;->r:Lb2/b;

    .line 7
    invoke-virtual {v2, v3}, Lv1/c;->H(Lb2/b;)Lv1/c;

    move-result-object v2

    .line 8
    invoke-virtual {v2, v1}, Lv1/c;->p(Landroid/widget/ImageView;)Lv2/j;

    .line 9
    iget-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_62

    .line 11
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 13
    new-instance v1, Lcom/tebakgambar/question/a;

    invoke-direct {v1, p0, p1}, Lcom/tebakgambar/question/a;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;Lcom/tebakgambar/question/EventQuestionActivity$t;)V

    sget p1, Lcom/tebakgambar/question/EventQuestionActivity;->G0:I

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_62
    return-void
.end method

.method static synthetic n0(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->F1()V

    return-void
.end method

.method private synthetic n1(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->S1()V

    return-void
.end method

.method static synthetic o0(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->G1()V

    return-void
.end method

.method private static synthetic o1(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 1
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic p0(Lcom/tebakgambar/question/EventQuestionActivity;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->o:Z

    return p0
.end method

.method private synthetic p1(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->T1()Z

    return-void
.end method

.method static synthetic q0(Lcom/tebakgambar/question/EventQuestionActivity;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->o:Z

    return p1
.end method

.method private synthetic q1(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/tebakgambar/Henson$b;->i()Lcom/tebakgambar/selfie/SelfieFrameChooserActivity$$IntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/selfie/SelfieFrameChooserActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x4d

    .line 4
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic r0(Lcom/tebakgambar/question/EventQuestionActivity;)Lcom/tebakgambar/model/FreeAnswer;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->q:Lcom/tebakgambar/model/FreeAnswer;

    return-object p0
.end method

.method private static synthetic r1(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 1
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic s0(Lcom/tebakgambar/question/EventQuestionActivity;Lcom/tebakgambar/model/FreeAnswer;)Lcom/tebakgambar/model/FreeAnswer;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->q:Lcom/tebakgambar/model/FreeAnswer;

    return-object p1
.end method

.method private synthetic s1(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->T1()Z

    return-void
.end method

.method static synthetic t0(Lcom/tebakgambar/question/EventQuestionActivity;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->b2(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic u0(Lcom/tebakgambar/question/EventQuestionActivity;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->Y1(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic u1(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/tebakgambar/Henson$b;->i()Lcom/tebakgambar/selfie/SelfieFrameChooserActivity$$IntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/selfie/SelfieFrameChooserActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x4d

    .line 4
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic v0(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->W1()V

    return-void
.end method

.method private synthetic v1(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->e0:Lcom/tebakgambar/question/EventQuestionActivity$u;

    if-eqz p1, :cond_7

    .line 2
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 3
    :cond_7
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->T1()Z

    return-void
.end method

.method static synthetic w0(Lcom/tebakgambar/question/EventQuestionActivity;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->V0(I)V

    return-void
.end method

.method private synthetic w1(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->x:Lcom/tebakgambar/component/CustomButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method static synthetic x0(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->M1()V

    return-void
.end method

.method private synthetic x1(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic y0(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->W0()V

    return-void
.end method

.method private synthetic y1(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->Y0()V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic z0(Lcom/tebakgambar/question/EventQuestionActivity;Lcom/tebakgambar/model/EventHint;)Lcom/tebakgambar/model/EventHint;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->E0:Lcom/tebakgambar/model/EventHint;

    return-object p1
.end method

.method private synthetic z1(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->Z1()V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public P0()Landroid/content/Context;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/tebakgambar/question/EventQuestionActivity;->Z0(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v0, 0x0

    :cond_b
    return-object v0
.end method

.method public Q1(Ljava/lang/Integer;)V
    .registers 6

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v1, Lcom/tebakgambar/question/EventQuestionActivity$n;

    invoke-direct {v1, p0, p1}, Lcom/tebakgambar/question/EventQuestionActivity$n;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;Ljava/lang/Integer;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public U1(Ljava/lang/String;)V
    .registers 11

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-nez v0, :cond_38

    .line 2
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 5
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 6
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_43

    .line 7
    :cond_38
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 8
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 9
    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->x:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 10
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d0050

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a02a7

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tebakgambar/component/CustomTextView;

    const v3, 0x7f0a02c8

    .line 12
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tebakgambar/component/CustomTextView;

    const v4, 0x7f0a0149

    .line 13
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0a0075

    .line 14
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/tebakgambar/component/CustomButton;

    const v6, 0x7f0a029d

    .line 15
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/tebakgambar/component/CustomTextView;

    .line 16
    new-instance v7, Lt8/d;

    invoke-direct {v7, p0}, Lt8/d;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    invoke-virtual {v5, v7}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060047

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0600f8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/tebakgambar/component/CustomButton;->d(II)V

    const/16 v6, 0x8

    .line 19
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 20
    invoke-virtual {v5, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 21
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 25
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 26
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    new-instance v0, Lt8/b0;

    invoke-direct {v0, p0}, Lt8/b0;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public X1()V
    .registers 2

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lcom/tebakgambar/question/EventQuestionActivity$t;->a(I)Lcom/tebakgambar/question/EventQuestionActivity$t;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tebakgambar/question/EventQuestionActivity;->P1(Lcom/tebakgambar/question/EventQuestionActivity$t;)V

    return-void
.end method

.method public Z0(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_24

    .line 2
    check-cast p1, Landroid/app/Activity;

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1d

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_24

    :cond_1c
    return v0

    .line 5
    :cond_1d
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_24

    return v0

    :cond_24
    const/4 p1, 0x1

    return p1
.end method

.method public d(Ljava/lang/String;ILandroid/net/Uri;)V
    .registers 10

    .line 1
    new-instance p1, Lj8/c0;

    const p2, 0x7f1200ad

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const p2, 0x7f0701ea

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v2, 0x7f1300ec

    const/4 v3, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lj8/c0;-><init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/Integer;)V

    .line 2
    invoke-virtual {p1}, Lj8/c0;->show()V

    .line 3
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 4
    new-instance p3, Lg8/i;

    invoke-direct {p3, p1}, Lg8/i;-><init>(Lj8/c0;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/e;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->D0:Ly8/w;

    invoke-virtual {v0, p1, p2, p3}, Ly8/w;->o(IILandroid/content/Intent;)V

    const/16 p3, 0x4d

    if-ne p1, p3, :cond_15

    const/4 p1, -0x1

    if-ne p2, p1, :cond_15

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->E0:Lcom/tebakgambar/model/EventHint;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/tebakgambar/model/EventHint;->addChance(I)V

    :cond_15
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->x:Lcom/tebakgambar/component/CustomButton;

    if-ne p1, v0, :cond_11

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->Y:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_20b

    .line 3
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->J0()V

    goto/16 :goto_20b

    .line 4
    :cond_11
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->P:Landroid/widget/RelativeLayout;

    const-string v1, "-"

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p1, v0, :cond_d1

    .line 5
    :try_start_1b
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_21

    goto :goto_22

    :catch_21
    nop

    .line 6
    :goto_22
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->r0:Lcom/tebakgambar/model/SoalClue;

    if-eqz p1, :cond_20b

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->r0:Lcom/tebakgambar/model/SoalClue;

    iget-object v0, v0, Lcom/tebakgambar/model/SoalClue;->clue:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/Clue;

    iget-object v0, v0, Lcom/tebakgambar/model/Clue;->jawaban:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->r0:Lcom/tebakgambar/model/SoalClue;

    iget-object v0, v0, Lcom/tebakgambar/model/SoalClue;->clue:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/Clue;

    iget-object v0, v0, Lcom/tebakgambar/model/Clue;->jawaban:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->r0:Lcom/tebakgambar/model/SoalClue;

    iget-object v0, v0, Lcom/tebakgambar/model/SoalClue;->clue:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/Clue;

    iget-object v0, v0, Lcom/tebakgambar/model/Clue;->jawaban:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->r0:Lcom/tebakgambar/model/SoalClue;

    iget-object v0, v0, Lcom/tebakgambar/model/SoalClue;->clue:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/Clue;

    iget-object v0, v0, Lcom/tebakgambar/model/Clue;->jawaban:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tebakgambar/question/EventQuestionActivity;->u0:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_7d
    if-ge v5, v2, :cond_b8

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7d

    .line 18
    :cond_b8
    new-instance v0, Lj8/z;

    const v1, 0x7f1300ec

    invoke-direct {v0, p0, v1, p1}, Lj8/z;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->A0:Lj8/z;

    .line 19
    new-instance p1, Lcom/tebakgambar/question/EventQuestionActivity$r;

    invoke-direct {p1, p0}, Lcom/tebakgambar/question/EventQuestionActivity$r;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;)V

    invoke-virtual {v0, p1}, Lj8/z;->a(Lj8/z$c;)V

    .line 20
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->A0:Lj8/z;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_20b

    .line 21
    :cond_d1
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->u:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_140

    .line 22
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->r:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->r:Ljava/lang/Integer;

    .line 23
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->R:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 24
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->e0:Lcom/tebakgambar/question/EventQuestionActivity$u;

    if-eqz p1, :cond_f0

    .line 25
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 26
    :cond_f0
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->Y:Ljava/lang/String;

    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_103

    .line 27
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->R0()V

    .line 28
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->z:Lcom/tebakgambar/component/CustomEditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 29
    :cond_103
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->f0:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_111

    const/4 p1, -0x1

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_117

    .line 31
    :cond_111
    iget p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->d0:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 32
    :goto_117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tebakgambar/question/EventQuestionActivity;->Y:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tebakgambar/question/EventQuestionActivity;->Z:Lcom/tebakgambar/model/Question;

    iget-object v2, v2, Lcom/tebakgambar/model/Question;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "clickAnswerPage"

    const-string v1, "answer page"

    const-string v2, "click on skip question"

    invoke-static {v0, v1, v2, p1}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20b

    .line 33
    :cond_140
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->w0:Landroid/widget/LinearLayout;

    const v1, 0x7f110005

    if-ne p1, v0, :cond_176

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Ly8/y;->Z(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 35
    new-instance p1, Lcom/tebakgambar/model/Question;

    invoke-direct {p1}, Lcom/tebakgambar/model/Question;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->Z:Lcom/tebakgambar/model/Question;

    .line 36
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->r0:Lcom/tebakgambar/model/SoalClue;

    iget-object v0, v0, Lcom/tebakgambar/model/SoalClue;->clue:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/Clue;

    iget-object v0, v0, Lcom/tebakgambar/model/Clue;->jawaban:Ljava/lang/String;

    iput-object v0, p1, Lcom/tebakgambar/model/Question;->answer:Ljava/lang/String;

    .line 37
    iput v5, p0, Lcom/tebakgambar/question/EventQuestionActivity;->o0:I

    .line 38
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->r0:Lcom/tebakgambar/model/SoalClue;

    iget-object p1, p1, Lcom/tebakgambar/model/SoalClue;->clue:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/model/Clue;

    iget-object p1, p1, Lcom/tebakgambar/model/Clue;->soal_image_url:Ljava/lang/String;

    invoke-direct {p0, p1, v5}, Lcom/tebakgambar/question/EventQuestionActivity;->H1(Ljava/lang/String;Z)V

    goto/16 :goto_20b

    .line 39
    :cond_176
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->x0:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_1a8

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Ly8/y;->Z(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 41
    new-instance p1, Lcom/tebakgambar/model/Question;

    invoke-direct {p1}, Lcom/tebakgambar/model/Question;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->Z:Lcom/tebakgambar/model/Question;

    .line 42
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->r0:Lcom/tebakgambar/model/SoalClue;

    iget-object v0, v0, Lcom/tebakgambar/model/SoalClue;->clue:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/Clue;

    iget-object v0, v0, Lcom/tebakgambar/model/Clue;->jawaban:Ljava/lang/String;

    iput-object v0, p1, Lcom/tebakgambar/model/Question;->answer:Ljava/lang/String;

    .line 43
    iput v4, p0, Lcom/tebakgambar/question/EventQuestionActivity;->o0:I

    .line 44
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->r0:Lcom/tebakgambar/model/SoalClue;

    iget-object p1, p1, Lcom/tebakgambar/model/SoalClue;->clue:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/model/Clue;

    iget-object p1, p1, Lcom/tebakgambar/model/Clue;->soal_image_url:Ljava/lang/String;

    invoke-direct {p0, p1, v5}, Lcom/tebakgambar/question/EventQuestionActivity;->H1(Ljava/lang/String;Z)V

    goto :goto_20b

    .line 45
    :cond_1a8
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->y0:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_1da

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Ly8/y;->Z(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 47
    new-instance p1, Lcom/tebakgambar/model/Question;

    invoke-direct {p1}, Lcom/tebakgambar/model/Question;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->Z:Lcom/tebakgambar/model/Question;

    .line 48
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->r0:Lcom/tebakgambar/model/SoalClue;

    iget-object v0, v0, Lcom/tebakgambar/model/SoalClue;->clue:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/Clue;

    iget-object v0, v0, Lcom/tebakgambar/model/Clue;->jawaban:Ljava/lang/String;

    iput-object v0, p1, Lcom/tebakgambar/model/Question;->answer:Ljava/lang/String;

    .line 49
    iput v3, p0, Lcom/tebakgambar/question/EventQuestionActivity;->o0:I

    .line 50
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->r0:Lcom/tebakgambar/model/SoalClue;

    iget-object p1, p1, Lcom/tebakgambar/model/SoalClue;->clue:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/model/Clue;

    iget-object p1, p1, Lcom/tebakgambar/model/Clue;->soal_image_url:Ljava/lang/String;

    invoke-direct {p0, p1, v5}, Lcom/tebakgambar/question/EventQuestionActivity;->H1(Ljava/lang/String;Z)V

    goto :goto_20b

    .line 51
    :cond_1da
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->z0:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_20b

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Ly8/y;->Z(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 53
    new-instance p1, Lcom/tebakgambar/model/Question;

    invoke-direct {p1}, Lcom/tebakgambar/model/Question;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->Z:Lcom/tebakgambar/model/Question;

    .line 54
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->r0:Lcom/tebakgambar/model/SoalClue;

    iget-object v0, v0, Lcom/tebakgambar/model/SoalClue;->clue:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/Clue;

    iget-object v0, v0, Lcom/tebakgambar/model/Clue;->jawaban:Ljava/lang/String;

    iput-object v0, p1, Lcom/tebakgambar/model/Question;->answer:Ljava/lang/String;

    .line 55
    iput v2, p0, Lcom/tebakgambar/question/EventQuestionActivity;->o0:I

    .line 56
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->r0:Lcom/tebakgambar/model/SoalClue;

    iget-object p1, p1, Lcom/tebakgambar/model/SoalClue;->clue:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/model/Clue;

    iget-object p1, p1, Lcom/tebakgambar/model/Clue;->soal_image_url:Ljava/lang/String;

    invoke-direct {p0, p1, v5}, Lcom/tebakgambar/question/EventQuestionActivity;->H1(Ljava/lang/String;Z)V

    :cond_20b
    :goto_20b
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/e;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object p1

    invoke-virtual {p1}, Lj8/b;->s()V

    const p1, 0x7f0d001f

    .line 3
    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 4
    new-instance p1, Ly8/w;

    invoke-direct {p1, p0}, Ly8/w;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->D0:Ly8/w;

    .line 5
    invoke-virtual {p1, p0}, Ly8/w;->u(Ly8/w$g;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "event_clue"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/model/ResultEventClue;

    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->p0:Lcom/tebakgambar/model/ResultEventClue;

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "event_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/model/ResultEvents;

    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->q0:Lcom/tebakgambar/model/ResultEvents;

    .line 8
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->p0:Lcom/tebakgambar/model/ResultEventClue;

    if-eqz v0, :cond_4a

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->m0:Z

    .line 10
    iget-object p1, v0, Lcom/tebakgambar/model/BaseEvent;->id:Ljava/lang/String;

    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->Y:Ljava/lang/String;

    .line 11
    iget-object p1, v0, Lcom/tebakgambar/model/BaseEvent;->ads_banner:Ljava/lang/String;

    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->W:Ljava/lang/String;

    .line 12
    iget-object p1, v0, Lcom/tebakgambar/model/BaseEvent;->ads_url:Ljava/lang/String;

    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->X:Ljava/lang/String;

    goto :goto_5b

    :cond_4a
    if-eqz p1, :cond_5b

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->m0:Z

    .line 14
    iget-object v0, p1, Lcom/tebakgambar/model/BaseEvent;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->Y:Ljava/lang/String;

    .line 15
    iget-object v0, p1, Lcom/tebakgambar/model/BaseEvent;->ads_banner:Ljava/lang/String;

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->W:Ljava/lang/String;

    .line 16
    iget-object p1, p1, Lcom/tebakgambar/model/BaseEvent;->ads_url:Ljava/lang/String;

    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->X:Ljava/lang/String;

    .line 17
    :cond_5b
    :goto_5b
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->Y:Ljava/lang/String;

    invoke-static {p0, p1}, Ly8/y;->y(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->p:I

    .line 18
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->D0:Ly8/w;

    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->Q0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ly8/w;->v(Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->E1()V

    .line 20
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->X0()V

    .line 21
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->M0()V

    .line 22
    iget-boolean p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->m0:Z

    if-eqz p1, :cond_81

    .line 23
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->L0()V

    goto :goto_84

    .line 24
    :cond_81
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->R0()V

    .line 25
    :goto_84
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->U0()V

    .line 26
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->O0()V

    .line 27
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->G1()V

    .line 28
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->F1()V

    .line 29
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->s:Lcom/tebakgambar/component/ClickableImageView;

    invoke-virtual {p1}, Lcom/tebakgambar/component/ClickableImageView;->l()V

    .line 30
    invoke-direct {p0}, Lcom/tebakgambar/question/EventQuestionActivity;->T0()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/e;->onDestroy()V

    .line 2
    :try_start_3
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_9

    goto :goto_a

    :catch_9
    nop

    .line 3
    :goto_a
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    invoke-virtual {v0}, Lj8/b;->f()V

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->e0:Lcom/tebakgambar/question/EventQuestionActivity$u;

    if-eqz v0, :cond_1b

    .line 5
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->e0:Lcom/tebakgambar/question/EventQuestionActivity$u;

    :cond_1b
    return-void
.end method

.method protected onPause()V
    .registers 5

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/e;->onPause()V

    .line 2
    :try_start_3
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->J:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 3
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070193

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 4
    iget-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->J:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->W:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->X:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 6
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->w:Lcom/tebakgambar/component/CustomImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3d

    .line 7
    :cond_38
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->V:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3d} :catch_3d

    .line 8
    :catch_3d
    :goto_3d
    :try_start_3d
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_42} :catch_43

    goto :goto_44

    :catch_43
    nop

    .line 9
    :goto_44
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->e0:Lcom/tebakgambar/question/EventQuestionActivity$u;

    if-eqz v0, :cond_4b

    .line 10
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_4b
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/e;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x37

    if-ne p1, p2, :cond_17

    .line 2
    invoke-static {p3}, Ly8/o;->b([I)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->C0:Ljava/lang/Runnable;

    if-eqz p1, :cond_14

    .line 4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_14
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->C0:Ljava/lang/Runnable;

    :cond_17
    return-void
.end method

.method protected onResume()V
    .registers 14

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/e;->onResume()V

    .line 2
    :try_start_3
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->J:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 3
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070193

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 4
    iget-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->J:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->W:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->X:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 6
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->w:Lcom/tebakgambar/component/CustomImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3f

    .line 7
    :cond_38
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->V:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3d} :catch_3e

    goto :goto_3f

    :catch_3e
    nop

    .line 8
    :goto_3f
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->R:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_74

    .line 9
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->e0:Lcom/tebakgambar/question/EventQuestionActivity$u;

    if-eqz v0, :cond_4e

    .line 10
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 11
    :cond_4e
    iget v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->d0:I

    if-lez v0, :cond_66

    .line 12
    new-instance v0, Lcom/tebakgambar/question/EventQuestionActivity$u;

    iget v1, p0, Lcom/tebakgambar/question/EventQuestionActivity;->d0:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v3, v1

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/tebakgambar/question/EventQuestionActivity$u;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;JJ)V

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->e0:Lcom/tebakgambar/question/EventQuestionActivity$u;

    .line 13
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_74

    .line 14
    :cond_66
    new-instance v0, Lcom/tebakgambar/question/EventQuestionActivity$u;

    const-wide/32 v9, 0xea60

    const-wide/16 v11, 0x3e8

    move-object v7, v0

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/tebakgambar/question/EventQuestionActivity$u;-><init>(Lcom/tebakgambar/question/EventQuestionActivity;JJ)V

    iput-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity;->e0:Lcom/tebakgambar/question/EventQuestionActivity$u;

    :cond_74
    :goto_74
    return-void
.end method

.method public y(ILandroid/net/Uri;)V
    .registers 9

    .line 1
    new-instance p1, Lj8/c0;

    const p2, 0x7f1201bf

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const p2, 0x7f0701ea

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v2, 0x7f1300ec

    const/4 v3, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lj8/c0;-><init>(Landroid/content/Context;IZLjava/lang/String;Ljava/lang/Integer;)V

    .line 2
    invoke-virtual {p1}, Lj8/c0;->show()V

    .line 3
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 4
    new-instance v0, Lg8/i;

    invoke-direct {v0, p1}, Lg8/i;-><init>(Lj8/c0;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

###### Class com.tebakgambar.question.EventQuestionActivity.a (com.tebakgambar.question.EventQuestionActivity$a)
.class Lcom/tebakgambar/question/EventQuestionActivity$a;
.super Ljava/lang/Object;
.source "EventQuestionActivity.java"

# interfaces
.implements Lt2/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/EventQuestionActivity;->M0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt2/f<",
        "Ljava/lang/String;",
        "Ll2/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$a;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lv2/j;ZZ)Z
    .registers 6

    .line 1
    check-cast p1, Ll2/b;

    check-cast p2, Ljava/lang/String;

    invoke-virtual/range {p0 .. p5}, Lcom/tebakgambar/question/EventQuestionActivity$a;->d(Ll2/b;Ljava/lang/String;Lv2/j;ZZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Exception;Ljava/lang/Object;Lv2/j;Z)Z
    .registers 5

    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tebakgambar/question/EventQuestionActivity$a;->c(Ljava/lang/Exception;Ljava/lang/String;Lv2/j;Z)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/Exception;Ljava/lang/String;Lv2/j;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "Lv2/j<",
            "Ll2/b;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$a;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->V:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$a;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->w:Lcom/tebakgambar/component/CustomImageView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    return p2
.end method

.method public d(Ll2/b;Ljava/lang/String;Lv2/j;ZZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll2/b;",
            "Ljava/lang/String;",
            "Lv2/j<",
            "Ll2/b;",
            ">;ZZ)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$a;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->w:Lcom/tebakgambar/component/CustomImageView;

    new-instance p2, Lcom/tebakgambar/question/EventQuestionActivity$a$a;

    invoke-direct {p2, p0}, Lcom/tebakgambar/question/EventQuestionActivity$a$a;-><init>(Lcom/tebakgambar/question/EventQuestionActivity$a;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    return p1
.end method

###### Class com.tebakgambar.question.EventQuestionActivity.a.ViewOnClickListenerC0132a (com.tebakgambar.question.EventQuestionActivity$a$a)
.class Lcom/tebakgambar/question/EventQuestionActivity$a$a;
.super Ljava/lang/Object;
.source "EventQuestionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/EventQuestionActivity$a;->d(Ll2/b;Ljava/lang/String;Lv2/j;ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/tebakgambar/question/EventQuestionActivity$a;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$a$a;->o:Lcom/tebakgambar/question/EventQuestionActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$a$a;->o:Lcom/tebakgambar/question/EventQuestionActivity$a;

    iget-object v0, v0, Lcom/tebakgambar/question/EventQuestionActivity$a;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v0, v0, Lcom/tebakgambar/question/EventQuestionActivity;->X:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$a$a;->o:Lcom/tebakgambar/question/EventQuestionActivity$a;

    iget-object v0, v0, Lcom/tebakgambar/question/EventQuestionActivity$a;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

###### Class com.tebakgambar.question.EventQuestionActivity.b (com.tebakgambar.question.EventQuestionActivity$b)
.class Lcom/tebakgambar/question/EventQuestionActivity$b;
.super Ljava/lang/Object;
.source "EventQuestionActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/EventQuestionActivity;->J0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$b;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$b;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->S:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$b;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->S:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

###### Class com.tebakgambar.question.EventQuestionActivity.c (com.tebakgambar.question.EventQuestionActivity$c)
.class Lcom/tebakgambar/question/EventQuestionActivity$c;
.super Ljava/lang/Object;
.source "EventQuestionActivity.java"

# interfaces
.implements Ly8/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/EventQuestionActivity;->N0(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$c;->b:Lcom/tebakgambar/question/EventQuestionActivity;

    iput-object p2, p0, Lcom/tebakgambar/question/EventQuestionActivity$c;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$c;->b:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0}, Lcom/tebakgambar/question/EventQuestionActivity;->D0(Lcom/tebakgambar/question/EventQuestionActivity;)Lj8/k0;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lj8/k0;->V(Z)V

    return-void
.end method

.method public b(Landroid/net/Uri;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$c;->b:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0}, Lcom/tebakgambar/question/EventQuestionActivity;->D0(Lcom/tebakgambar/question/EventQuestionActivity;)Lj8/k0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj8/k0;->V(Z)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$c;->b:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->E0(Lcom/tebakgambar/question/EventQuestionActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$c;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_16

    .line 4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_16
    return-void
.end method

###### Class com.tebakgambar.question.EventQuestionActivity.d (com.tebakgambar.question.EventQuestionActivity$d)
.class Lcom/tebakgambar/question/EventQuestionActivity$d;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "EventQuestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/EventQuestionActivity;->J1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$d;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->b()V

    .line 2
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    invoke-virtual {v0}, Lj8/b;->q()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$d;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tebakgambar/question/EventQuestionActivity;->F0(Lcom/tebakgambar/question/EventQuestionActivity;I)V

    .line 4
    :cond_13
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj8/b;->x(Z)V

    .line 5
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$d;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0}, Lcom/tebakgambar/question/EventQuestionActivity;->G0(Lcom/tebakgambar/question/EventQuestionActivity;)V

    return-void
.end method

.method public c(Lcom/google/android/gms/ads/AdError;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/FullScreenContentCallback;->c(Lcom/google/android/gms/ads/AdError;)V

    .line 2
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object p1

    invoke-virtual {p1}, Lj8/b;->h()V

    return-void
.end method

.method public e()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->e()V

    .line 2
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    invoke-virtual {v0}, Lj8/b;->h()V

    return-void
.end method

###### Class com.tebakgambar.question.EventQuestionActivity.e (com.tebakgambar.question.EventQuestionActivity$e)
.class Lcom/tebakgambar/question/EventQuestionActivity$e;
.super Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;
.source "EventQuestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/EventQuestionActivity;->I1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$e;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/LoadAdError;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->a(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$e;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/tebakgambar/question/EventQuestionActivity;->j0:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lcom/tebakgambar/question/EventQuestionActivity$e;->c(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    return-void
.end method

.method public c(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->b(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$e;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iput-object p1, v0, Lcom/tebakgambar/question/EventQuestionActivity;->j0:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 3
    new-instance v0, Lcom/tebakgambar/question/EventQuestionActivity$e$a;

    invoke-direct {v0, p0}, Lcom/tebakgambar/question/EventQuestionActivity$e$a;-><init>(Lcom/tebakgambar/question/EventQuestionActivity$e;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->d(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    return-void
.end method

###### Class com.tebakgambar.question.EventQuestionActivity.e.a (com.tebakgambar.question.EventQuestionActivity$e$a)
.class Lcom/tebakgambar/question/EventQuestionActivity$e$a;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "EventQuestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/EventQuestionActivity$e;->c(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/question/EventQuestionActivity$e;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity$e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$e$a;->a:Lcom/tebakgambar/question/EventQuestionActivity$e;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$e$a;->a:Lcom/tebakgambar/question/EventQuestionActivity$e;

    iget-object v0, v0, Lcom/tebakgambar/question/EventQuestionActivity$e;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0}, Lcom/tebakgambar/question/EventQuestionActivity;->l0(Lcom/tebakgambar/question/EventQuestionActivity;)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$e$a;->a:Lcom/tebakgambar/question/EventQuestionActivity$e;

    iget-object v0, v0, Lcom/tebakgambar/question/EventQuestionActivity$e;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tebakgambar/question/EventQuestionActivity;->F0(Lcom/tebakgambar/question/EventQuestionActivity;I)V

    return-void
.end method

.method public e()V
    .registers 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->e()V

    .line 2
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    invoke-virtual {v0}, Lj8/b;->g()V

    return-void
.end method

###### Class com.tebakgambar.question.EventQuestionActivity.f (com.tebakgambar.question.EventQuestionActivity$f)
.class Lcom/tebakgambar/question/EventQuestionActivity$f;
.super Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;
.source "EventQuestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/EventQuestionActivity;->F1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$f;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/LoadAdError;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->a(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$f;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/tebakgambar/question/EventQuestionActivity;->k0:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lcom/tebakgambar/question/EventQuestionActivity$f;->c(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    return-void
.end method

.method public c(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->b(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$f;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iput-object p1, v0, Lcom/tebakgambar/question/EventQuestionActivity;->k0:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 3
    new-instance v0, Lcom/tebakgambar/question/EventQuestionActivity$f$a;

    invoke-direct {v0, p0}, Lcom/tebakgambar/question/EventQuestionActivity$f$a;-><init>(Lcom/tebakgambar/question/EventQuestionActivity$f;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->d(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    return-void
.end method

###### Class com.tebakgambar.question.EventQuestionActivity.f.a (com.tebakgambar.question.EventQuestionActivity$f$a)
.class Lcom/tebakgambar/question/EventQuestionActivity$f$a;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "EventQuestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/EventQuestionActivity$f;->c(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/question/EventQuestionActivity$f;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity$f;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$f$a;->a:Lcom/tebakgambar/question/EventQuestionActivity$f;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$f$a;->a:Lcom/tebakgambar/question/EventQuestionActivity$f;

    iget-object v0, v0, Lcom/tebakgambar/question/EventQuestionActivity$f;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0}, Lcom/tebakgambar/question/EventQuestionActivity;->n0(Lcom/tebakgambar/question/EventQuestionActivity;)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$f$a;->a:Lcom/tebakgambar/question/EventQuestionActivity$f;

    iget-object v0, v0, Lcom/tebakgambar/question/EventQuestionActivity$f;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tebakgambar/question/EventQuestionActivity;->F0(Lcom/tebakgambar/question/EventQuestionActivity;I)V

    return-void
.end method

.method public e()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$f$a;->a:Lcom/tebakgambar/question/EventQuestionActivity$f;

    iget-object v0, v0, Lcom/tebakgambar/question/EventQuestionActivity$f;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tebakgambar/question/EventQuestionActivity;->k0:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-void
.end method

###### Class com.tebakgambar.question.EventQuestionActivity.g (com.tebakgambar.question.EventQuestionActivity$g)
.class Lcom/tebakgambar/question/EventQuestionActivity$g;
.super Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
.source "EventQuestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/EventQuestionActivity;->G1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$g;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/LoadAdError;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->a(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$g;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/tebakgambar/question/EventQuestionActivity;->l0:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-virtual {p0, p1}, Lcom/tebakgambar/question/EventQuestionActivity$g;->c(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    return-void
.end method

.method public c(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->b(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$g;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iput-object p1, v0, Lcom/tebakgambar/question/EventQuestionActivity;->l0:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 3
    new-instance v0, Lcom/tebakgambar/question/EventQuestionActivity$g$a;

    invoke-direct {v0, p0}, Lcom/tebakgambar/question/EventQuestionActivity$g$a;-><init>(Lcom/tebakgambar/question/EventQuestionActivity$g;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->d(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    return-void
.end method

###### Class com.tebakgambar.question.EventQuestionActivity.g.a (com.tebakgambar.question.EventQuestionActivity$g$a)
.class Lcom/tebakgambar/question/EventQuestionActivity$g$a;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "EventQuestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/EventQuestionActivity$g;->c(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/question/EventQuestionActivity$g;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity$g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$g$a;->a:Lcom/tebakgambar/question/EventQuestionActivity$g;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->b()V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$g$a;->a:Lcom/tebakgambar/question/EventQuestionActivity$g;

    iget-object v0, v0, Lcom/tebakgambar/question/EventQuestionActivity$g;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0}, Lcom/tebakgambar/question/EventQuestionActivity;->p0(Lcom/tebakgambar/question/EventQuestionActivity;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$g$a;->a:Lcom/tebakgambar/question/EventQuestionActivity$g;

    iget-object v0, v0, Lcom/tebakgambar/question/EventQuestionActivity$g;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tebakgambar/question/EventQuestionActivity;->F0(Lcom/tebakgambar/question/EventQuestionActivity;I)V

    .line 4
    :cond_15
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$g$a;->a:Lcom/tebakgambar/question/EventQuestionActivity$g;

    iget-object v0, v0, Lcom/tebakgambar/question/EventQuestionActivity$g;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tebakgambar/question/EventQuestionActivity;->q0(Lcom/tebakgambar/question/EventQuestionActivity;Z)Z

    return-void
.end method

.method public e()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->e()V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$g$a;->a:Lcom/tebakgambar/question/EventQuestionActivity$g;

    iget-object v0, v0, Lcom/tebakgambar/question/EventQuestionActivity$g;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tebakgambar/question/EventQuestionActivity;->l0:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 3
    invoke-static {v0}, Lcom/tebakgambar/question/EventQuestionActivity;->o0(Lcom/tebakgambar/question/EventQuestionActivity;)V

    return-void
.end method

###### Class com.tebakgambar.question.EventQuestionActivity.h (com.tebakgambar.question.EventQuestionActivity$h)
.class Lcom/tebakgambar/question/EventQuestionActivity$h;
.super Ljava/lang/Object;
.source "EventQuestionActivity.java"

# interfaces
.implements Lwa/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/EventQuestionActivity;->c1(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lwa/d<",
        "Lcom/tebakgambar/model/response/ApiResponse3<",
        "Lcom/tebakgambar/model/FreeAnswer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$h;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lwa/b;Lwa/l;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/FreeAnswer;",
            ">;>;",
            "Lwa/l<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/FreeAnswer;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lwa/l;->f()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$h;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-virtual {p2}, Lwa/l;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tebakgambar/model/response/ApiResponse3;

    iget-object p2, p2, Lcom/tebakgambar/model/response/ApiResponse3;->data:Ljava/lang/Object;

    check-cast p2, Lcom/tebakgambar/model/FreeAnswer;

    invoke-static {p1, p2}, Lcom/tebakgambar/question/EventQuestionActivity;->s0(Lcom/tebakgambar/question/EventQuestionActivity;Lcom/tebakgambar/model/FreeAnswer;)Lcom/tebakgambar/model/FreeAnswer;

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$h;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/question/EventQuestionActivity;->r0(Lcom/tebakgambar/question/EventQuestionActivity;)Lcom/tebakgambar/model/FreeAnswer;

    move-result-object p2

    iget-object p2, p2, Lcom/tebakgambar/model/FreeAnswer;->imageUrl:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/tebakgambar/question/EventQuestionActivity;->t0(Lcom/tebakgambar/question/EventQuestionActivity;Ljava/lang/String;)V

    :cond_20
    return-void
.end method

.method public b(Lwa/b;Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/FreeAnswer;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$h;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    const p2, 0x7f12009b

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tebakgambar/question/EventQuestionActivity;->u0(Lcom/tebakgambar/question/EventQuestionActivity;Ljava/lang/String;)V

    return-void
.end method

###### Class com.tebakgambar.question.EventQuestionActivity.i (com.tebakgambar.question.EventQuestionActivity$i)
.class Lcom/tebakgambar/question/EventQuestionActivity$i;
.super Ljava/lang/Object;
.source "EventQuestionActivity.java"

# interfaces
.implements Lwa/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/EventQuestionActivity;->a1(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lwa/d<",
        "Lcom/tebakgambar/model/response/ApiResponse3<",
        "Lcom/tebakgambar/model/FreeAnswer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$i;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lwa/b;Lwa/l;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/FreeAnswer;",
            ">;>;",
            "Lwa/l<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/FreeAnswer;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lwa/l;->f()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$i;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-virtual {p2}, Lwa/l;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tebakgambar/model/response/ApiResponse3;

    iget-object p2, p2, Lcom/tebakgambar/model/response/ApiResponse3;->data:Ljava/lang/Object;

    check-cast p2, Lcom/tebakgambar/model/FreeAnswer;

    invoke-static {p1, p2}, Lcom/tebakgambar/question/EventQuestionActivity;->s0(Lcom/tebakgambar/question/EventQuestionActivity;Lcom/tebakgambar/model/FreeAnswer;)Lcom/tebakgambar/model/FreeAnswer;

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$i;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/question/EventQuestionActivity;->r0(Lcom/tebakgambar/question/EventQuestionActivity;)Lcom/tebakgambar/model/FreeAnswer;

    move-result-object p2

    iget-object p2, p2, Lcom/tebakgambar/model/FreeAnswer;->imageUrl:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/tebakgambar/question/EventQuestionActivity;->t0(Lcom/tebakgambar/question/EventQuestionActivity;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$i;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/question/EventQuestionActivity;->v0(Lcom/tebakgambar/question/EventQuestionActivity;)V

    goto :goto_32

    .line 5
    :cond_26
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$i;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    const p2, 0x7f12009a

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tebakgambar/question/EventQuestionActivity;->u0(Lcom/tebakgambar/question/EventQuestionActivity;Ljava/lang/String;)V

    :goto_32
    return-void
.end method

.method public b(Lwa/b;Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/FreeAnswer;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

###### Class com.tebakgambar.question.EventQuestionActivity.j (com.tebakgambar.question.EventQuestionActivity$j)
.class Lcom/tebakgambar/question/EventQuestionActivity$j;
.super Ljava/lang/Object;
.source "EventQuestionActivity.java"

# interfaces
.implements Lwa/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/EventQuestionActivity;->C1(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lwa/d<",
        "Lcom/tebakgambar/model/response/ApiResponse3<",
        "Lcom/tebakgambar/model/FreeAnswer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$j;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lwa/b;Lwa/l;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/FreeAnswer;",
            ">;>;",
            "Lwa/l<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/FreeAnswer;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lwa/l;->f()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$j;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-virtual {p1}, Lcom/tebakgambar/question/EventQuestionActivity;->X1()V

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$j;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-virtual {p2}, Lwa/l;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tebakgambar/model/response/ApiResponse3;

    iget-object p2, p2, Lcom/tebakgambar/model/response/ApiResponse3;->data:Ljava/lang/Object;

    check-cast p2, Lcom/tebakgambar/model/FreeAnswer;

    invoke-static {p1, p2}, Lcom/tebakgambar/question/EventQuestionActivity;->s0(Lcom/tebakgambar/question/EventQuestionActivity;Lcom/tebakgambar/model/FreeAnswer;)Lcom/tebakgambar/model/FreeAnswer;

    .line 4
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$j;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/question/EventQuestionActivity;->r0(Lcom/tebakgambar/question/EventQuestionActivity;)Lcom/tebakgambar/model/FreeAnswer;

    move-result-object p2

    iget-object p2, p2, Lcom/tebakgambar/model/FreeAnswer;->imageUrl:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/tebakgambar/question/EventQuestionActivity;->t0(Lcom/tebakgambar/question/EventQuestionActivity;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$j;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p2, p1, Lcom/tebakgambar/question/EventQuestionActivity;->z:Lcom/tebakgambar/component/CustomEditText;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->Z:Lcom/tebakgambar/model/Question;

    iget-object p1, p1, Lcom/tebakgambar/model/Question;->answer:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3d

    .line 6
    :cond_31
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$j;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    const p2, 0x7f1200b3

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tebakgambar/question/EventQuestionActivity;->u0(Lcom/tebakgambar/question/EventQuestionActivity;Ljava/lang/String;)V

    :goto_3d
    return-void
.end method

.method public b(Lwa/b;Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/FreeAnswer;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$j;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    const p2, 0x7f1200b3

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tebakgambar/question/EventQuestionActivity;->u0(Lcom/tebakgambar/question/EventQuestionActivity;Ljava/lang/String;)V

    return-void
.end method

###### Class com.tebakgambar.question.EventQuestionActivity.k (com.tebakgambar.question.EventQuestionActivity$k)
.class Lcom/tebakgambar/question/EventQuestionActivity$k;
.super Ljava/lang/Object;
.source "EventQuestionActivity.java"

# interfaces
.implements Lt2/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/EventQuestionActivity;->b2(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt2/f<",
        "Ljava/lang/String;",
        "Ll2/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$k;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lv2/j;ZZ)Z
    .registers 6

    .line 1
    check-cast p1, Ll2/b;

    check-cast p2, Ljava/lang/String;

    invoke-virtual/range {p0 .. p5}, Lcom/tebakgambar/question/EventQuestionActivity$k;->d(Ll2/b;Ljava/lang/String;Lv2/j;ZZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Exception;Ljava/lang/Object;Lv2/j;Z)Z
    .registers 5

    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tebakgambar/question/EventQuestionActivity$k;->c(Ljava/lang/Exception;Ljava/lang/String;Lv2/j;Z)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/Exception;Ljava/lang/String;Lv2/j;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "Lv2/j<",
            "Ll2/b;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$k;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->s:Lcom/tebakgambar/component/ClickableImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public d(Ll2/b;Ljava/lang/String;Lv2/j;ZZ)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll2/b;",
            "Ljava/lang/String;",
            "Lv2/j<",
            "Ll2/b;",
            ">;ZZ)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$k;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->s:Lcom/tebakgambar/component/ClickableImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return p2
.end method

###### Class com.tebakgambar.question.EventQuestionActivity.l (com.tebakgambar.question.EventQuestionActivity$l)
.class Lcom/tebakgambar/question/EventQuestionActivity$l;
.super Ljava/lang/Object;
.source "EventQuestionActivity.java"

# interfaces
.implements Lwa/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/EventQuestionActivity;->e1()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lwa/d<",
        "Lcom/tebakgambar/model/response/ApiResponse<",
        "Ljava/util/ArrayList<",
        "Lcom/tebakgambar/model/SoalSogam;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lwa/b;Lwa/l;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse<",
            "Ljava/util/ArrayList<",
            "Lcom/tebakgambar/model/SoalSogam;",
            ">;>;>;",
            "Lwa/l<",
            "Lcom/tebakgambar/model/response/ApiResponse<",
            "Ljava/util/ArrayList<",
            "Lcom/tebakgambar/model/SoalSogam;",
            ">;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lwa/l;->a()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "0"

    if-eqz p1, :cond_8a

    invoke-virtual {p2}, Lwa/l;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/model/response/ApiResponse;

    iget-object p1, p1, Lcom/tebakgambar/model/response/ApiResponse;->data:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8a

    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->Y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8a

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p2, p2, Lcom/tebakgambar/question/EventQuestionActivity;->Y:Ljava/lang/String;

    const-string v0, "-1"

    invoke-static {p1, p2, v0}, Ly8/y;->w0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->q0:Lcom/tebakgambar/model/ResultEvents;

    iget-object p1, p1, Lcom/tebakgambar/model/BaseEvent;->message_event_end:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string p2, "event_data"

    if-nez p1, :cond_69

    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->q0:Lcom/tebakgambar/model/ResultEvents;

    iget-object p1, p1, Lcom/tebakgambar/model/BaseEvent;->message_event_end:Ljava/lang/String;

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e

    goto :goto_69

    .line 4
    :cond_4e
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tebakgambar/QuotesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v1, v1, Lcom/tebakgambar/question/EventQuestionActivity;->q0:Lcom/tebakgambar/model/ResultEvents;

    .line 5
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p2

    .line 6
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_83

    .line 7
    :cond_69
    :goto_69
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tebakgambar/QuotesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v1, v1, Lcom/tebakgambar/question/EventQuestionActivity;->q0:Lcom/tebakgambar/model/ResultEvents;

    .line 8
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 10
    :goto_83
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1a9

    :cond_8a
    const/16 p1, 0x8

    const/4 v1, 0x0

    .line 11
    :try_start_8d
    invoke-virtual {p2}, Lwa/l;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tebakgambar/model/response/ApiResponse;

    iget-object p2, p2, Lcom/tebakgambar/model/response/ApiResponse;->data:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tebakgambar/model/SoalSogam;

    .line 12
    iget-object v2, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v3, p2, Lcom/tebakgambar/model/SoalSogam;->soal_image_url:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/tebakgambar/question/EventQuestionActivity;->j0(Lcom/tebakgambar/question/EventQuestionActivity;Ljava/lang/String;Z)V

    .line 13
    iget-object v2, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v3, v2, Lcom/tebakgambar/question/EventQuestionActivity;->Z:Lcom/tebakgambar/model/Question;

    iget-object v4, p2, Lcom/tebakgambar/model/SoalSogam;->id:Ljava/lang/String;

    iput-object v4, v3, Lcom/tebakgambar/model/Question;->id:Ljava/lang/String;

    .line 14
    iget-object v3, p2, Lcom/tebakgambar/model/SoalSogam;->username:Ljava/lang/String;

    iput-object v3, v2, Lcom/tebakgambar/question/EventQuestionActivity;->b0:Ljava/lang/String;

    .line 15
    iget-object v3, p2, Lcom/tebakgambar/model/SoalSogam;->default_point:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/tebakgambar/question/EventQuestionActivity;->c0:I

    .line 16
    iget-object v2, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-virtual {p2}, Lcom/tebakgambar/model/SoalSogam;->isRegularType()Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/tebakgambar/question/EventQuestionActivity;->f0:Ljava/lang/Boolean;

    .line 17
    invoke-virtual {p2}, Lcom/tebakgambar/model/SoalSogam;->isRegularType()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_da

    .line 18
    iget-object v2, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v3, p2, Lcom/tebakgambar/model/SoalSogam;->duration:Ljava/lang/Integer;

    if-eqz v3, :cond_d5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_d6

    :cond_d5
    const/4 v3, 0x0

    :goto_d6
    invoke-static {v2, v3}, Lcom/tebakgambar/question/EventQuestionActivity;->w0(Lcom/tebakgambar/question/EventQuestionActivity;I)V

    goto :goto_f1

    .line 19
    :cond_da
    iget-object v2, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v3, p2, Lcom/tebakgambar/model/SoalSogam;->default_point:Ljava/lang/Integer;

    if-eqz v3, :cond_e5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_e6

    :cond_e5
    const/4 v3, 0x0

    :goto_e6
    iput v3, v2, Lcom/tebakgambar/question/EventQuestionActivity;->c0:I

    .line 20
    iget-object v2, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iput v1, v2, Lcom/tebakgambar/question/EventQuestionActivity;->d0:I

    .line 21
    iget-object v2, v2, Lcom/tebakgambar/question/EventQuestionActivity;->R:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 22
    :goto_f1
    iget-object v2, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v2, v2, Lcom/tebakgambar/question/EventQuestionActivity;->Y:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_130

    .line 23
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v0, v0, Lcom/tebakgambar/question/EventQuestionActivity;->Z:Lcom/tebakgambar/model/Question;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcom/tebakgambar/model/SoalSogam;->jawaban1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/tebakgambar/model/SoalSogam;->jawaban2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tebakgambar/model/Question;->answer:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p2, p2, Lcom/tebakgambar/model/SoalSogam;->id:Ljava/lang/String;

    invoke-static {v0, p2}, Ly8/y;->z0(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    iget-object p2, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p2, p2, Lcom/tebakgambar/question/EventQuestionActivity;->u:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    iget-object p2, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v0, p2, Lcom/tebakgambar/question/EventQuestionActivity;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1a9

    .line 27
    :cond_130
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v2, v0, Lcom/tebakgambar/question/EventQuestionActivity;->Z:Lcom/tebakgambar/model/Question;

    iget-object v3, p2, Lcom/tebakgambar/model/SoalSogam;->jawaban:Ljava/lang/String;

    iput-object v3, v2, Lcom/tebakgambar/model/Question;->answer:Ljava/lang/String;

    .line 28
    iget-object p2, p2, Lcom/tebakgambar/model/SoalSogam;->id:Ljava/lang/String;

    .line 29
    iget-object v2, v0, Lcom/tebakgambar/question/EventQuestionActivity;->Y:Ljava/lang/String;

    invoke-static {v0, v2, p2}, Ly8/y;->x0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0}, Lcom/tebakgambar/question/EventQuestionActivity;->x0(Lcom/tebakgambar/question/EventQuestionActivity;)V

    .line 31
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    new-instance v2, Lcom/tebakgambar/model/EventHint;

    iget-object v3, v0, Lcom/tebakgambar/question/EventQuestionActivity;->Y:Ljava/lang/String;

    iget-object v4, v0, Lcom/tebakgambar/question/EventQuestionActivity;->Z:Lcom/tebakgambar/model/Question;

    iget-object v4, v4, Lcom/tebakgambar/model/Question;->answer:Ljava/lang/String;

    invoke-direct {v2, v3, p2, v4}, Lcom/tebakgambar/model/EventHint;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/tebakgambar/question/EventQuestionActivity;->z0(Lcom/tebakgambar/question/EventQuestionActivity;Lcom/tebakgambar/model/EventHint;)Lcom/tebakgambar/model/EventHint;

    .line 32
    iget-object p2, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p2, p2, Lcom/tebakgambar/question/EventQuestionActivity;->Y:Ljava/lang/String;

    const-string v0, "3"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_16f

    .line 33
    iget-object p2, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p2, p2, Lcom/tebakgambar/question/EventQuestionActivity;->u:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    iget-object p2, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v0, p2, Lcom/tebakgambar/question/EventQuestionActivity;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1a9

    .line 35
    :cond_16f
    iget-object p2, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p2, p2, Lcom/tebakgambar/question/EventQuestionActivity;->P:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 36
    iget-object p2, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p2, p2, Lcom/tebakgambar/question/EventQuestionActivity;->A:Lcom/tebakgambar/component/CustomTextView;

    const v0, 0x7f1200e3

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 37
    iget-object p2, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v0, p2, Lcom/tebakgambar/question/EventQuestionActivity;->P:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_187
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_187} :catch_188

    goto :goto_1a9

    .line 38
    :catch_188
    iget-object p2, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p2, p2, Lcom/tebakgambar/question/EventQuestionActivity;->L:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 39
    iget-object p2, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p2, p2, Lcom/tebakgambar/question/EventQuestionActivity;->M:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 40
    iget-object p2, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p2, p2, Lcom/tebakgambar/question/EventQuestionActivity;->U:Landroid/widget/ScrollView;

    invoke-virtual {p2, p1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 41
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->y:Lcom/tebakgambar/component/CustomButton;

    new-instance p2, Lcom/tebakgambar/question/EventQuestionActivity$l$a;

    invoke-direct {p2, p0}, Lcom/tebakgambar/question/EventQuestionActivity$l$a;-><init>(Lcom/tebakgambar/question/EventQuestionActivity$l;)V

    invoke-virtual {p1, p2}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1a9
    return-void
.end method

.method public b(Lwa/b;Ljava/lang/Throwable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse<",
            "Ljava/util/ArrayList<",
            "Lcom/tebakgambar/model/SoalSogam;",
            ">;>;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->L:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->M:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->U:Landroid/widget/ScrollView;

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->y:Lcom/tebakgambar/component/CustomButton;

    new-instance p2, Lcom/tebakgambar/question/EventQuestionActivity$l$b;

    invoke-direct {p2, p0}, Lcom/tebakgambar/question/EventQuestionActivity$l$b;-><init>(Lcom/tebakgambar/question/EventQuestionActivity$l;)V

    invoke-virtual {p1, p2}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

###### Class com.tebakgambar.question.EventQuestionActivity.l.a (com.tebakgambar.question.EventQuestionActivity$l$a)
.class Lcom/tebakgambar/question/EventQuestionActivity$l$a;
.super Ljava/lang/Object;
.source "EventQuestionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/EventQuestionActivity$l;->a(Lwa/b;Lwa/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/tebakgambar/question/EventQuestionActivity$l;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity$l;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$l$a;->o:Lcom/tebakgambar/question/EventQuestionActivity$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$l$a;->o:Lcom/tebakgambar/question/EventQuestionActivity$l;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/question/EventQuestionActivity;->C0(Lcom/tebakgambar/question/EventQuestionActivity;)V

    return-void
.end method

###### Class com.tebakgambar.question.EventQuestionActivity.l.b (com.tebakgambar.question.EventQuestionActivity$l$b)
.class Lcom/tebakgambar/question/EventQuestionActivity$l$b;
.super Ljava/lang/Object;
.source "EventQuestionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/EventQuestionActivity$l;->b(Lwa/b;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/tebakgambar/question/EventQuestionActivity$l;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity$l;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$l$b;->o:Lcom/tebakgambar/question/EventQuestionActivity$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$l$b;->o:Lcom/tebakgambar/question/EventQuestionActivity$l;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity$l;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/question/EventQuestionActivity;->C0(Lcom/tebakgambar/question/EventQuestionActivity;)V

    return-void
.end method

###### Class com.tebakgambar.question.EventQuestionActivity.m (com.tebakgambar.question.EventQuestionActivity$m)
.class Lcom/tebakgambar/question/EventQuestionActivity$m;
.super Ljava/lang/Object;
.source "EventQuestionActivity.java"

# interfaces
.implements Lt2/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/EventQuestionActivity;->H1(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lt2/f<",
        "Ljava/lang/String;",
        "Ll2/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;Ljava/lang/String;Z)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iput-object p2, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lv2/j;ZZ)Z
    .registers 6

    .line 1
    check-cast p1, Ll2/b;

    check-cast p2, Ljava/lang/String;

    invoke-virtual/range {p0 .. p5}, Lcom/tebakgambar/question/EventQuestionActivity$m;->d(Ll2/b;Ljava/lang/String;Lv2/j;ZZ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Exception;Ljava/lang/Object;Lv2/j;Z)Z
    .registers 5

    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tebakgambar/question/EventQuestionActivity$m;->c(Ljava/lang/Exception;Ljava/lang/String;Lv2/j;Z)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/Exception;Ljava/lang/String;Lv2/j;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "Lv2/j<",
            "Ll2/b;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->L:Landroid/widget/RelativeLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->M:Landroid/widget/RelativeLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->U:Landroid/widget/ScrollView;

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->y:Lcom/tebakgambar/component/CustomButton;

    new-instance p2, Lcom/tebakgambar/question/EventQuestionActivity$m$a;

    invoke-direct {p2, p0}, Lcom/tebakgambar/question/EventQuestionActivity$m$a;-><init>(Lcom/tebakgambar/question/EventQuestionActivity$m;)V

    invoke-virtual {p1, p2}, Lcom/tebakgambar/component/CustomButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return p3
.end method

.method public d(Ll2/b;Ljava/lang/String;Lv2/j;ZZ)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll2/b;",
            "Ljava/lang/String;",
            "Lv2/j<",
            "Ll2/b;",
            ">;ZZ)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-object p4, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {p4}, Lcom/tebakgambar/question/EventQuestionActivity;->k0(Lcom/tebakgambar/question/EventQuestionActivity;)J

    move-result-wide p4

    sub-long/2addr p2, p4

    invoke-static {p1, p2, p3}, Lcom/tebakgambar/question/EventQuestionActivity;->m0(Lcom/tebakgambar/question/EventQuestionActivity;J)J

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->t:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-virtual {p3}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p3

    const p4, 0x7f0701d1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p3, p4}, Ly8/y;->u(Landroid/content/Context;Ljava/lang/Integer;)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p2, p3}, Ly8/y;->l(Landroid/content/Context;Ljava/lang/Float;)F

    move-result p2

    float-to-int p2, p2

    iget-object p3, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-virtual {p3}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->densityDpi:I

    const/4 p4, 0x0

    const/16 p5, 0x1e0

    if-ne p3, p5, :cond_50

    const/16 p3, 0x64

    goto :goto_51

    :cond_50
    const/4 p3, 0x0

    :goto_51
    add-int/2addr p2, p3

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->x:Lcom/tebakgambar/component/CustomButton;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 4
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {p1}, Lcom/tebakgambar/question/EventQuestionActivity;->y0(Lcom/tebakgambar/question/EventQuestionActivity;)V

    .line 5
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->L:Landroid/widget/RelativeLayout;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->M:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->U:Landroid/widget/ScrollView;

    invoke-virtual {p1, p4}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-boolean p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->m0:Z

    if-eqz p1, :cond_1d6

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    iget-object p5, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p5, p5, Lcom/tebakgambar/question/EventQuestionActivity;->u0:Ljava/util/ArrayList;

    invoke-direct {p1, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 10
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p5

    sub-int/2addr p5, p2

    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 12
    iget-object p5, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget v0, p5, Lcom/tebakgambar/question/EventQuestionActivity;->o0:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_ad

    .line 13
    iget-object p5, p5, Lcom/tebakgambar/question/EventQuestionActivity;->z:Lcom/tebakgambar/component/CustomEditText;

    invoke-virtual {p5, p3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 14
    iget-object p5, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p5, p5, Lcom/tebakgambar/question/EventQuestionActivity;->x:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {p5, p3}, Landroid/widget/Button;->setVisibility(I)V

    .line 15
    iget-object p5, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p5, p5, Lcom/tebakgambar/question/EventQuestionActivity;->E:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p5, p4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c0

    .line 16
    :cond_ad
    iget-object p5, p5, Lcom/tebakgambar/question/EventQuestionActivity;->z:Lcom/tebakgambar/component/CustomEditText;

    invoke-virtual {p5, p4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 17
    iget-object p5, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p5, p5, Lcom/tebakgambar/question/EventQuestionActivity;->x:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {p5, p4}, Landroid/widget/Button;->setVisibility(I)V

    .line 18
    iget-object p5, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p5, p5, Lcom/tebakgambar/question/EventQuestionActivity;->E:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p5, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    :goto_c0
    iget-boolean p5, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->b:Z

    if-eqz p5, :cond_159

    .line 20
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_198

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    .line 21
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v0, v0, Lcom/tebakgambar/question/EventQuestionActivity;->s0:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v0, v0, Lcom/tebakgambar/question/EventQuestionActivity;->s0:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v2, v2, Lcom/tebakgambar/question/EventQuestionActivity;->p0:Lcom/tebakgambar/model/ResultEventClue;

    iget-object v2, v2, Lcom/tebakgambar/model/ResultEventClue;->color_clue:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 23
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0}, Lv1/g;->w(Landroidx/fragment/app/e;)Lv1/j;

    move-result-object v0

    iget-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v1, v1, Lcom/tebakgambar/question/EventQuestionActivity;->p0:Lcom/tebakgambar/model/ResultEventClue;

    iget-object v1, v1, Lcom/tebakgambar/model/ResultEventClue;->image_clue:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lv1/j;->x(Ljava/lang/String;)Lv1/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lv1/c;->U(Z)Lv1/c;

    move-result-object v0

    sget-object v1, Lb2/b;->r:Lb2/b;

    invoke-virtual {v0, v1}, Lv1/c;->H(Lb2/b;)Lv1/c;

    move-result-object v0

    const v1, 0x7f080159

    .line 24
    invoke-virtual {v0, v1}, Lv1/c;->Q(I)Lv1/c;

    move-result-object v0

    iget-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v1, v1, Lcom/tebakgambar/question/EventQuestionActivity;->t0:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/widget/ImageView;

    invoke-virtual {v0, p5}, Lv1/c;->p(Landroid/widget/ImageView;)Lv2/j;

    goto/16 :goto_c8

    .line 25
    :cond_159
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->J:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 26
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->z:Lcom/tebakgambar/component/CustomEditText;

    invoke-virtual {p1, p4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 27
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->z:Lcom/tebakgambar/component/CustomEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 28
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->x:Lcom/tebakgambar/component/CustomButton;

    invoke-virtual {p1, p4}, Landroid/widget/Button;->setVisibility(I)V

    .line 29
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->E:Lcom/tebakgambar/component/CustomTextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 30
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->w0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 31
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->x0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 32
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->y0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 33
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->z0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 34
    :cond_198
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->O:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 35
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p2, p1, Lcom/tebakgambar/question/EventQuestionActivity;->w0:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p2, p1, Lcom/tebakgambar/question/EventQuestionActivity;->x0:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p2, p1, Lcom/tebakgambar/question/EventQuestionActivity;->y0:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p2, p1, Lcom/tebakgambar/question/EventQuestionActivity;->z0:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->v0:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 40
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->v0:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p2, p2, Lcom/tebakgambar/question/EventQuestionActivity;->t:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1d6
    return p4
.end method

###### Class com.tebakgambar.question.EventQuestionActivity.m.a (com.tebakgambar.question.EventQuestionActivity$m$a)
.class Lcom/tebakgambar/question/EventQuestionActivity$m$a;
.super Ljava/lang/Object;
.source "EventQuestionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/EventQuestionActivity$m;->c(Ljava/lang/Exception;Ljava/lang/String;Lv2/j;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/tebakgambar/question/EventQuestionActivity$m;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity$m;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$m$a;->o:Lcom/tebakgambar/question/EventQuestionActivity$m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$m$a;->o:Lcom/tebakgambar/question/EventQuestionActivity$m;

    iget-object v0, p1, Lcom/tebakgambar/question/EventQuestionActivity$m;->c:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v1, p1, Lcom/tebakgambar/question/EventQuestionActivity$m;->a:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/tebakgambar/question/EventQuestionActivity$m;->b:Z

    invoke-static {v0, v1, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->j0(Lcom/tebakgambar/question/EventQuestionActivity;Ljava/lang/String;Z)V

    return-void
.end method

###### Class com.tebakgambar.question.EventQuestionActivity.n (com.tebakgambar.question.EventQuestionActivity$n)
.class Lcom/tebakgambar/question/EventQuestionActivity$n;
.super Ljava/lang/Object;
.source "EventQuestionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/EventQuestionActivity;->Q1(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ljava/lang/Integer;

.field final synthetic p:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;Ljava/lang/Integer;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$n;->p:Lcom/tebakgambar/question/EventQuestionActivity;

    iput-object p2, p0, Lcom/tebakgambar/question/EventQuestionActivity$n;->o:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$n;->o:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7f080139

    if-eq v0, v1, :cond_ab

    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$n;->o:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7f08013a

    if-ne v0, v1, :cond_18

    goto/16 :goto_ab

    .line 2
    :cond_18
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$n;->o:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7f080157

    if-eq v0, v1, :cond_9a

    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$n;->o:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7f080156

    if-eq v0, v1, :cond_9a

    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$n;->o:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7f08013b

    if-ne v0, v1, :cond_3a

    goto :goto_9a

    .line 3
    :cond_3a
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$n;->o:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7f080133

    if-ne v0, v1, :cond_56

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$n;->p:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ly8/y;->Z(Landroid/content/Context;Ljava/lang/Integer;)V

    goto :goto_bb

    .line 5
    :cond_56
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$n;->o:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7f080134

    if-eq v0, v1, :cond_89

    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$n;->o:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7f080135

    if-ne v0, v1, :cond_6d

    goto :goto_89

    .line 6
    :cond_6d
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$n;->o:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7f080137

    if-ne v0, v1, :cond_bb

    .line 7
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$n;->p:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110008

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ly8/y;->Z(Landroid/content/Context;Ljava/lang/Integer;)V

    goto :goto_bb

    .line 8
    :cond_89
    :goto_89
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$n;->p:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110004

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ly8/y;->Z(Landroid/content/Context;Ljava/lang/Integer;)V

    goto :goto_bb

    .line 9
    :cond_9a
    :goto_9a
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$n;->p:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f11000a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ly8/y;->Z(Landroid/content/Context;Ljava/lang/Integer;)V

    goto :goto_bb

    .line 10
    :cond_ab
    :goto_ab
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$n;->p:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110009

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ly8/y;->Z(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 11
    :cond_bb
    :goto_bb
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$n;->p:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d0060

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0154

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 15
    :try_start_da
    iget-object v2, p0, Lcom/tebakgambar/question/EventQuestionActivity$n;->p:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v2}, Lv1/g;->w(Landroidx/fragment/app/e;)Lv1/j;

    move-result-object v2

    iget-object v3, p0, Lcom/tebakgambar/question/EventQuestionActivity$n;->o:Ljava/lang/Integer;

    .line 16
    invoke-virtual {v2, v3}, Lv1/j;->w(Ljava/lang/Integer;)Lv1/d;

    move-result-object v2

    const/4 v3, 0x1

    .line 17
    invoke-virtual {v2, v3}, Lv1/c;->U(Z)Lv1/c;

    move-result-object v2

    sget-object v3, Lb2/b;->r:Lb2/b;

    .line 18
    invoke-virtual {v2, v3}, Lv1/c;->H(Lb2/b;)Lv1/c;

    move-result-object v2

    .line 19
    invoke-virtual {v2, v1}, Lv1/c;->p(Landroid/widget/ImageView;)Lv2/j;

    .line 20
    iget-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity$n;->p:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v1, v1, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 21
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$n;->p:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v0, v0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_102} :catch_103

    goto :goto_107

    :catch_103
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    :goto_107
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tebakgambar/question/EventQuestionActivity$n$a;

    invoke-direct {v1, p0}, Lcom/tebakgambar/question/EventQuestionActivity$n$a;-><init>(Lcom/tebakgambar/question/EventQuestionActivity$n;)V

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

###### Class com.tebakgambar.question.EventQuestionActivity.n.a (com.tebakgambar.question.EventQuestionActivity$n$a)
.class Lcom/tebakgambar/question/EventQuestionActivity$n$a;
.super Ljava/lang/Object;
.source "EventQuestionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/EventQuestionActivity$n;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/tebakgambar/question/EventQuestionActivity$n;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity$n;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$n$a;->o:Lcom/tebakgambar/question/EventQuestionActivity$n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$n$a;->o:Lcom/tebakgambar/question/EventQuestionActivity$n;

    iget-object v0, v0, Lcom/tebakgambar/question/EventQuestionActivity$n;->p:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v0, v0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$n$a;->o:Lcom/tebakgambar/question/EventQuestionActivity$n;

    iget-object v0, v0, Lcom/tebakgambar/question/EventQuestionActivity$n;->p:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v0, v0, Lcom/tebakgambar/question/EventQuestionActivity;->x:Lcom/tebakgambar/component/CustomButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

###### Class com.tebakgambar.question.EventQuestionActivity.o (com.tebakgambar.question.EventQuestionActivity$o)
.class Lcom/tebakgambar/question/EventQuestionActivity$o;
.super Ljava/lang/Object;
.source "EventQuestionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/EventQuestionActivity;->X0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$o;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$o;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->J:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    iget v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$o;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v0, v0, Lcom/tebakgambar/question/EventQuestionActivity;->J:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$o;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->w:Lcom/tebakgambar/component/CustomImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$o;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->V:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

###### Class com.tebakgambar.question.EventQuestionActivity.p (com.tebakgambar.question.EventQuestionActivity$p)
.class Lcom/tebakgambar/question/EventQuestionActivity$p;
.super Ljava/lang/Object;
.source "EventQuestionActivity.java"

# interfaces
.implements Lcom/tebakgambar/component/CustomEditText$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/EventQuestionActivity;->X0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$p;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tebakgambar/component/CustomEditText;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$p;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->J:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    iget v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/tebakgambar/question/EventQuestionActivity$p;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070193

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$p;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v0, v0, Lcom/tebakgambar/question/EventQuestionActivity;->J:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$p;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->W:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_41

    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$p;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->X:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_41

    .line 5
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$p;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->w:Lcom/tebakgambar/component/CustomImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_48

    .line 6
    :cond_41
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$p;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->V:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_48
    return-void
.end method

###### Class com.tebakgambar.question.EventQuestionActivity.q (com.tebakgambar.question.EventQuestionActivity$q)
.class Lcom/tebakgambar/question/EventQuestionActivity$q;
.super Landroidx/activity/g;
.source "EventQuestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/EventQuestionActivity;->T0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;Z)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$q;->d:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-direct {p0, p2}, Landroidx/activity/g;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$q;->d:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v1, v0, Lcom/tebakgambar/question/EventQuestionActivity;->r0:Lcom/tebakgambar/model/SoalClue;

    if-eqz v1, :cond_22

    .line 2
    iget v1, v0, Lcom/tebakgambar/question/EventQuestionActivity;->o0:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_19

    .line 3
    iput v2, v0, Lcom/tebakgambar/question/EventQuestionActivity;->o0:I

    .line 4
    iget-object v0, v0, Lcom/tebakgambar/question/EventQuestionActivity;->z:Lcom/tebakgambar/component/CustomEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$q;->d:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0}, Lcom/tebakgambar/question/EventQuestionActivity;->A0(Lcom/tebakgambar/question/EventQuestionActivity;)V

    goto :goto_36

    .line 6
    :cond_19
    invoke-static {v0}, Lcom/tebakgambar/question/EventQuestionActivity;->B0(Lcom/tebakgambar/question/EventQuestionActivity;)V

    .line 7
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$q;->d:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_36

    .line 8
    :cond_22
    iget-object v0, v0, Lcom/tebakgambar/question/EventQuestionActivity;->Y:Ljava/lang/String;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 9
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$q;->d:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0}, Lcom/tebakgambar/question/EventQuestionActivity;->B0(Lcom/tebakgambar/question/EventQuestionActivity;)V

    .line 10
    :cond_31
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$q;->d:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_36
    return-void
.end method

###### Class com.tebakgambar.question.EventQuestionActivity.r (com.tebakgambar.question.EventQuestionActivity$r)
.class Lcom/tebakgambar/question/EventQuestionActivity$r;
.super Ljava/lang/Object;
.source "EventQuestionActivity.java"

# interfaces
.implements Lj8/z$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/EventQuestionActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$r;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$r;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v0, v0, Lcom/tebakgambar/question/EventQuestionActivity;->A0:Lj8/z;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    if-eqz p1, :cond_42

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_32

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2a

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$r;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f110005

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Ly8/y;->Z(Landroid/content/Context;Ljava/lang/Integer;)V

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$r;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->A0:Lj8/z;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_49

    .line 4
    :cond_2a
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$r;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->z0:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->performClick()Z

    goto :goto_49

    .line 5
    :cond_32
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$r;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->y0:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->performClick()Z

    goto :goto_49

    .line 6
    :cond_3a
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$r;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->x0:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->performClick()Z

    goto :goto_49

    .line 7
    :cond_42
    iget-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$r;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object p1, p1, Lcom/tebakgambar/question/EventQuestionActivity;->w0:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->performClick()Z

    :goto_49
    return-void
.end method

###### Class com.tebakgambar.question.EventQuestionActivity.s (com.tebakgambar.question.EventQuestionActivity$s)
.class Lcom/tebakgambar/question/EventQuestionActivity$s;
.super Ljava/lang/Object;
.source "EventQuestionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/EventQuestionActivity;->J0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$s;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$s;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v0, v0, Lcom/tebakgambar/question/EventQuestionActivity;->a0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_9

    :catch_8
    nop

    .line 2
    :goto_9
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$s;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v1, v0, Lcom/tebakgambar/question/EventQuestionActivity;->r0:Lcom/tebakgambar/model/SoalClue;

    if-eqz v1, :cond_16

    const/4 v1, 0x4

    .line 3
    iput v1, v0, Lcom/tebakgambar/question/EventQuestionActivity;->o0:I

    .line 4
    invoke-static {v0}, Lcom/tebakgambar/question/EventQuestionActivity;->A0(Lcom/tebakgambar/question/EventQuestionActivity;)V

    goto :goto_19

    .line 5
    :cond_16
    invoke-static {v0}, Lcom/tebakgambar/question/EventQuestionActivity;->C0(Lcom/tebakgambar/question/EventQuestionActivity;)V

    .line 6
    :goto_19
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$s;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v0, v0, Lcom/tebakgambar/question/EventQuestionActivity;->z:Lcom/tebakgambar/component/CustomEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

###### Class com.tebakgambar.question.EventQuestionActivity.t (com.tebakgambar.question.EventQuestionActivity$t)
.class Lcom/tebakgambar/question/EventQuestionActivity$t;
.super Ljava/lang/Object;
.source "EventQuestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/question/EventQuestionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "t"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(II)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$t;->a:I

    .line 3
    iput p2, p0, Lcom/tebakgambar/question/EventQuestionActivity$t;->b:I

    return-void
.end method

.method static a(I)Lcom/tebakgambar/question/EventQuestionActivity$t;
    .registers 4

    const/4 v0, 0x1

    const v1, 0x7f110003

    const/4 v2, 0x0

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_c

    const/4 v1, 0x0

    goto :goto_13

    :cond_c
    const v2, 0x7f0801a6

    goto :goto_13

    :cond_10
    const v2, 0x7f0801a7

    .line 1
    :goto_13
    new-instance p0, Lcom/tebakgambar/question/EventQuestionActivity$t;

    invoke-direct {p0, v2, v1}, Lcom/tebakgambar/question/EventQuestionActivity$t;-><init>(II)V

    return-object p0
.end method

###### Class com.tebakgambar.question.EventQuestionActivity.u (com.tebakgambar.question.EventQuestionActivity$u)
.class Lcom/tebakgambar/question/EventQuestionActivity$u;
.super Landroid/os/CountDownTimer;
.source "EventQuestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/question/EventQuestionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "u"
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;JJ)V
    .registers 6

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/EventQuestionActivity$u;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    .line 2
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$u;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v0, v0, Lcom/tebakgambar/question/EventQuestionActivity;->G:Lcom/tebakgambar/component/CustomTextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$u;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v0, v0, Lcom/tebakgambar/question/EventQuestionActivity;->G:Lcom/tebakgambar/component/CustomTextView;

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public onTick(J)V
    .registers 6

    const-wide/16 v0, 0x3e8

    .line 1
    div-long/2addr p1, v0

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$u;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110006

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ly8/y;->Z(Landroid/content/Context;Ljava/lang/Integer;)V

    const-wide/16 v0, 0x5

    cmp-long v2, p1, v0

    if-gtz v2, :cond_2d

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2d

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$u;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v0, v0, Lcom/tebakgambar/question/EventQuestionActivity;->G:Lcom/tebakgambar/component/CustomTextView;

    const-string v1, "#E44144"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3a

    .line 4
    :cond_2d
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$u;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v0, v0, Lcom/tebakgambar/question/EventQuestionActivity;->G:Lcom/tebakgambar/component/CustomTextView;

    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    :goto_3a
    iget-object v0, p0, Lcom/tebakgambar/question/EventQuestionActivity$u;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    long-to-int v1, p1

    iput v1, v0, Lcom/tebakgambar/question/EventQuestionActivity;->d0:I

    .line 6
    iget-object v0, v0, Lcom/tebakgambar/question/EventQuestionActivity;->G:Lcom/tebakgambar/component/CustomTextView;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

###### Class com.tebakgambar.question.a (com.tebakgambar.question.a)
.class public final synthetic Lcom/tebakgambar/question/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/EventQuestionActivity;

.field public final synthetic p:Lcom/tebakgambar/question/EventQuestionActivity$t;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;Lcom/tebakgambar/question/EventQuestionActivity$t;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/question/a;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    iput-object p2, p0, Lcom/tebakgambar/question/a;->p:Lcom/tebakgambar/question/EventQuestionActivity$t;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/question/a;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v1, p0, Lcom/tebakgambar/question/a;->p:Lcom/tebakgambar/question/EventQuestionActivity$t;

    invoke-static {v0, v1}, Lcom/tebakgambar/question/EventQuestionActivity;->E(Lcom/tebakgambar/question/EventQuestionActivity;Lcom/tebakgambar/question/EventQuestionActivity$t;)V

    return-void
.end method

###### Class com.tebakgambar.question.b (com.tebakgambar.question.b)
.class public final synthetic Lcom/tebakgambar/question/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/EventQuestionActivity;

.field public final synthetic p:Lcom/tebakgambar/question/EventQuestionActivity$t;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;Lcom/tebakgambar/question/EventQuestionActivity$t;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/question/b;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    iput-object p2, p0, Lcom/tebakgambar/question/b;->p:Lcom/tebakgambar/question/EventQuestionActivity$t;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/question/b;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v1, p0, Lcom/tebakgambar/question/b;->p:Lcom/tebakgambar/question/EventQuestionActivity$t;

    invoke-static {v0, v1}, Lcom/tebakgambar/question/EventQuestionActivity;->G(Lcom/tebakgambar/question/EventQuestionActivity;Lcom/tebakgambar/question/EventQuestionActivity$t;)V

    return-void
.end method

###### Class t8.a (t8.a)
.class public final synthetic Lt8/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/a;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lt8/a;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0, p1, p2}, Lcom/tebakgambar/question/EventQuestionActivity;->F(Lcom/tebakgambar/question/EventQuestionActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class t8.a0 (t8.a0)
.class public final synthetic Lt8/a0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final synthetic o:Lt8/a0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lt8/a0;

    invoke-direct {v0}, Lt8/a0;-><init>()V

    sput-object v0, Lt8/a0;->o:Lt8/a0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-static {p1, p2}, Lcom/tebakgambar/question/EventQuestionActivity;->X(Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class t8.b (t8.b)
.class public final synthetic Lt8/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/b;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lt8/b;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->N(Lcom/tebakgambar/question/EventQuestionActivity;Landroid/view/View;)V

    return-void
.end method

###### Class t8.b0 (t8.b0)
.class public final synthetic Lt8/b0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/b0;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lt8/b0;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->T(Lcom/tebakgambar/question/EventQuestionActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

###### Class t8.c (t8.c)
.class public final synthetic Lt8/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/c;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lt8/c;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->O(Lcom/tebakgambar/question/EventQuestionActivity;Landroid/view/View;)V

    return-void
.end method

###### Class t8.c0 (t8.c0)
.class public final synthetic Lt8/c0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/c0;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lt8/c0;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->J(Lcom/tebakgambar/question/EventQuestionActivity;Landroid/view/View;)V

    return-void
.end method

###### Class t8.d (t8.d)
.class public final synthetic Lt8/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/d;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lt8/d;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->Z(Lcom/tebakgambar/question/EventQuestionActivity;Landroid/view/View;)V

    return-void
.end method

###### Class t8.d0 (t8.d0)
.class public final synthetic Lt8/d0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/d0;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lt8/d0;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->M(Lcom/tebakgambar/question/EventQuestionActivity;Landroid/view/View;)V

    return-void
.end method

###### Class t8.e (t8.e)
.class public final synthetic Lt8/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/e;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lt8/e;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->b0(Lcom/tebakgambar/question/EventQuestionActivity;Landroid/view/View;)V

    return-void
.end method

###### Class t8.f (t8.f)
.class public final synthetic Lt8/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/f;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lt8/f;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->f0(Lcom/tebakgambar/question/EventQuestionActivity;Landroid/view/View;)V

    return-void
.end method

###### Class t8.g (t8.g)
.class public final synthetic Lt8/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/g;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lt8/g;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->h0(Lcom/tebakgambar/question/EventQuestionActivity;Landroid/view/View;)V

    return-void
.end method

###### Class t8.h (t8.h)
.class public final synthetic Lt8/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/ads/OnUserEarnedRewardListener;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/h;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .registers 3

    iget-object v0, p0, Lt8/h;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->C(Lcom/tebakgambar/question/EventQuestionActivity;Lcom/google/android/gms/ads/rewarded/RewardItem;)V

    return-void
.end method

###### Class t8.i (t8.i)
.class public final synthetic Lt8/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/i;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    iget-object v0, p0, Lt8/i;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->H(Lcom/tebakgambar/question/EventQuestionActivity;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

###### Class t8.j (t8.j)
.class public final synthetic Lt8/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/j;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    iget-object v0, p0, Lt8/j;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->P(Lcom/tebakgambar/question/EventQuestionActivity;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

###### Class t8.k (t8.k)
.class public final synthetic Lt8/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/k;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    iget-object v0, p0, Lt8/k;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/EventQuestionActivity;->W(Lcom/tebakgambar/question/EventQuestionActivity;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

###### Class t8.l (t8.l)
.class public final synthetic Lt8/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/l;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lt8/l;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0, p1, p2}, Lcom/tebakgambar/question/EventQuestionActivity;->K(Lcom/tebakgambar/question/EventQuestionActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class t8.m (t8.m)
.class public final synthetic Lt8/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/m;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lt8/m;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0}, Lcom/tebakgambar/question/EventQuestionActivity;->D(Lcom/tebakgambar/question/EventQuestionActivity;)V

    return-void
.end method

###### Class t8.n (t8.n)
.class public final synthetic Lt8/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/n;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lt8/n;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0}, Lcom/tebakgambar/question/EventQuestionActivity;->L(Lcom/tebakgambar/question/EventQuestionActivity;)V

    return-void
.end method

###### Class t8.o (t8.o)
.class public final synthetic Lt8/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/o;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lt8/o;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0}, Lcom/tebakgambar/question/EventQuestionActivity;->Y(Lcom/tebakgambar/question/EventQuestionActivity;)V

    return-void
.end method

###### Class t8.p (t8.p)
.class public final synthetic Lt8/p;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/p;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lt8/p;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0}, Lcom/tebakgambar/question/EventQuestionActivity;->a0(Lcom/tebakgambar/question/EventQuestionActivity;)V

    return-void
.end method

###### Class t8.q (t8.q)
.class public final synthetic Lt8/q;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/q;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lt8/q;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0}, Lcom/tebakgambar/question/EventQuestionActivity;->c0(Lcom/tebakgambar/question/EventQuestionActivity;)V

    return-void
.end method

###### Class t8.r (t8.r)
.class public final synthetic Lt8/r;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/r;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lt8/r;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0}, Lcom/tebakgambar/question/EventQuestionActivity;->i0(Lcom/tebakgambar/question/EventQuestionActivity;)V

    return-void
.end method

###### Class t8.s (t8.s)
.class public final synthetic Lt8/s;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/s;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lt8/s;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0}, Lcom/tebakgambar/question/EventQuestionActivity;->e0(Lcom/tebakgambar/question/EventQuestionActivity;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class t8.t (t8.t)
.class public final synthetic Lt8/t;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/question/EventQuestionActivity;

.field public final synthetic b:Lcom/google/android/gms/tasks/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/t;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iput-object p2, p0, Lt8/t;->b:Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lt8/t;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v1, p0, Lt8/t;->b:Lcom/google/android/gms/tasks/Task;

    invoke-static {v0, v1}, Lcom/tebakgambar/question/EventQuestionActivity;->I(Lcom/tebakgambar/question/EventQuestionActivity;Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class t8.u (t8.u)
.class public final synthetic Lt8/u;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/question/EventQuestionActivity;

.field public final synthetic b:Lcom/google/android/gms/tasks/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/u;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iput-object p2, p0, Lt8/u;->b:Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lt8/u;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v1, p0, Lt8/u;->b:Lcom/google/android/gms/tasks/Task;

    invoke-static {v0, v1}, Lcom/tebakgambar/question/EventQuestionActivity;->Q(Lcom/tebakgambar/question/EventQuestionActivity;Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class t8.v (t8.v)
.class public final synthetic Lt8/v;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/question/EventQuestionActivity;

.field public final synthetic b:Lcom/google/android/gms/tasks/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/v;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iput-object p2, p0, Lt8/v;->b:Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lt8/v;->a:Lcom/tebakgambar/question/EventQuestionActivity;

    iget-object v1, p0, Lt8/v;->b:Lcom/google/android/gms/tasks/Task;

    invoke-static {v0, v1}, Lcom/tebakgambar/question/EventQuestionActivity;->U(Lcom/tebakgambar/question/EventQuestionActivity;Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class t8.w (t8.w)
.class public final synthetic Lt8/w;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/w;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lt8/w;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0, p1, p2}, Lcom/tebakgambar/question/EventQuestionActivity;->R(Lcom/tebakgambar/question/EventQuestionActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class t8.x (t8.x)
.class public final synthetic Lt8/x;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/x;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lt8/x;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0, p1, p2}, Lcom/tebakgambar/question/EventQuestionActivity;->S(Lcom/tebakgambar/question/EventQuestionActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class t8.y (t8.y)
.class public final synthetic Lt8/y;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/EventQuestionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/EventQuestionActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/y;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lt8/y;->o:Lcom/tebakgambar/question/EventQuestionActivity;

    invoke-static {v0, p1, p2}, Lcom/tebakgambar/question/EventQuestionActivity;->g0(Lcom/tebakgambar/question/EventQuestionActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

###### Class t8.z (t8.z)
.class public final synthetic Lt8/z;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final synthetic o:Lt8/z;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lt8/z;

    invoke-direct {v0}, Lt8/z;-><init>()V

    sput-object v0, Lt8/z;->o:Lt8/z;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-static {p1, p2}, Lcom/tebakgambar/question/EventQuestionActivity;->V(Landroid/content/DialogInterface;I)V

    return-void
.end method
