###### Class com.tebakgambar.question.g (com.tebakgambar.question.g)
.class public Lcom/tebakgambar/question/g;
.super Landroidx/lifecycle/a;
.source "RegularQuestionViewModel.java"

# interfaces
.implements Ly8/w$g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tebakgambar/question/g$f;
    }
.end annotation


# instance fields
.field A:Lcom/tebakgambar/model/QuestionSavedData;

.field B:Landroid/net/Uri;

.field private C:Z

.field D:Lcom/tebakgambar/model/Level;

.field private E:Lcom/tebakgambar/model/Level;

.field private F:I

.field G:I

.field H:J

.field public I:Landroidx/databinding/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/m<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public J:Landroidx/databinding/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/m<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public K:Landroidx/databinding/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/m<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public L:Landroidx/databinding/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/m<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public M:Landroidx/lifecycle/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/t<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field N:Landroidx/lifecycle/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/t<",
            "Lt1/h<",
            "Lcom/tebakgambar/model/Question;",
            ">;>;"
        }
    .end annotation
.end field

.field private O:Lt1/e;

.field P:Landroidx/lifecycle/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/t<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field Q:Ly8/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly8/u<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field R:Ly8/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly8/u<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field S:Ly8/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly8/u<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field T:Ly8/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly8/u<",
            "Lcom/tebakgambar/question/g$f;",
            ">;"
        }
    .end annotation
.end field

.field U:Ly8/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly8/u<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field V:Ly8/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly8/u<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field W:Ly8/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly8/u<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field X:Ly8/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly8/u<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field Y:Ly8/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly8/u<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field Z:Ly8/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly8/u<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field s:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

.field t:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

.field u:Lcom/google/android/gms/ads/rewarded/RewardedAd;

.field v:Lcom/google/android/gms/ads/rewarded/RewardedAd;

.field w:Lm8/a;

.field private x:Z

.field y:Z

.field z:Lcom/tebakgambar/model/Question;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/tebakgambar/question/g;->x:Z

    .line 3
    iput-boolean p1, p0, Lcom/tebakgambar/question/g;->y:Z

    .line 4
    new-instance p1, Landroidx/databinding/m;

    invoke-direct {p1}, Landroidx/databinding/m;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/question/g;->I:Landroidx/databinding/m;

    .line 5
    new-instance p1, Landroidx/databinding/m;

    invoke-direct {p1}, Landroidx/databinding/m;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/question/g;->J:Landroidx/databinding/m;

    .line 6
    new-instance p1, Landroidx/databinding/m;

    invoke-direct {p1}, Landroidx/databinding/m;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/question/g;->K:Landroidx/databinding/m;

    .line 7
    new-instance p1, Landroidx/databinding/m;

    invoke-direct {p1}, Landroidx/databinding/m;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/question/g;->L:Landroidx/databinding/m;

    .line 8
    new-instance p1, Landroidx/lifecycle/t;

    invoke-direct {p1}, Landroidx/lifecycle/t;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/question/g;->M:Landroidx/lifecycle/t;

    .line 9
    new-instance p1, Landroidx/lifecycle/t;

    invoke-direct {p1}, Landroidx/lifecycle/t;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/question/g;->N:Landroidx/lifecycle/t;

    .line 10
    new-instance p1, Lt1/e;

    invoke-direct {p1}, Lt1/e;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/question/g;->O:Lt1/e;

    .line 11
    new-instance p1, Landroidx/lifecycle/t;

    invoke-direct {p1}, Landroidx/lifecycle/t;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/question/g;->P:Landroidx/lifecycle/t;

    .line 12
    new-instance p1, Ly8/u;

    invoke-direct {p1}, Ly8/u;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/question/g;->Q:Ly8/u;

    .line 13
    new-instance p1, Ly8/u;

    invoke-direct {p1}, Ly8/u;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/question/g;->R:Ly8/u;

    .line 14
    new-instance p1, Ly8/u;

    invoke-direct {p1}, Ly8/u;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/question/g;->S:Ly8/u;

    .line 15
    new-instance p1, Ly8/u;

    invoke-direct {p1}, Ly8/u;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/question/g;->T:Ly8/u;

    .line 16
    new-instance p1, Ly8/u;

    invoke-direct {p1}, Ly8/u;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/question/g;->U:Ly8/u;

    .line 17
    new-instance p1, Ly8/u;

    invoke-direct {p1}, Ly8/u;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/question/g;->V:Ly8/u;

    .line 18
    new-instance p1, Ly8/u;

    invoke-direct {p1}, Ly8/u;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/question/g;->W:Ly8/u;

    .line 19
    new-instance p1, Ly8/u;

    invoke-direct {p1}, Ly8/u;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/question/g;->X:Ly8/u;

    .line 20
    new-instance p1, Ly8/u;

    invoke-direct {p1}, Ly8/u;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/question/g;->Y:Ly8/u;

    .line 21
    new-instance p1, Ly8/u;

    invoke-direct {p1}, Ly8/u;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/question/g;->Z:Ly8/u;

    .line 22
    iget-object p1, p0, Lcom/tebakgambar/question/g;->K:Landroidx/databinding/m;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/databinding/m;->z(Ljava/lang/Object;)V

    .line 23
    iget-object p1, p0, Lcom/tebakgambar/question/g;->M:Landroidx/lifecycle/t;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 24
    invoke-static {}, Lm8/a;->f()Lm8/a;

    move-result-object p1

    iput-object p1, p0, Lcom/tebakgambar/question/g;->w:Lm8/a;

    return-void
.end method

.method static synthetic A(Lcom/tebakgambar/question/g;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lcom/tebakgambar/question/g;->x:Z

    return p1
.end method

.method private B(I)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/g;->H()I

    move-result v0

    add-int/2addr v0, p1

    .line 2
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/tebakgambar/question/g;->D:Lcom/tebakgambar/model/Level;

    iget v2, v2, Lcom/tebakgambar/model/Level;->id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ly8/y;->k0(Landroid/content/Context;ILjava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/tebakgambar/question/g;->P:Landroidx/lifecycle/t;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/tebakgambar/question/g;->T:Ly8/u;

    invoke-static {p1}, Lcom/tebakgambar/question/g$f;->b(I)Lcom/tebakgambar/question/g$f;

    move-result-object p1

    invoke-virtual {v0, p1}, Ly8/u;->n(Ljava/lang/Object;)V

    return-void
.end method

.method private C(Ljava/lang/String;)I
    .registers 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/g;->z:Lcom/tebakgambar/model/Question;

    iget-object v0, v0, Lcom/tebakgambar/model/Question;->answer:Ljava/lang/String;

    invoke-static {p1, v0}, Ly8/j;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 v0, 0x2

    if-gt p1, v0, :cond_15

    const/4 p1, 0x3

    return p1

    :cond_15
    const/4 p1, 0x4

    return p1
.end method

.method private E()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/tebakgambar/question/g;->s:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 2
    iput-object v0, p0, Lcom/tebakgambar/question/g;->t:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 3
    iput-object v0, p0, Lcom/tebakgambar/question/g;->u:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 4
    iput-object v0, p0, Lcom/tebakgambar/question/g;->v:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    return-void
.end method

.method private H()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/tebakgambar/question/g;->D:Lcom/tebakgambar/model/Level;

    iget v1, v1, Lcom/tebakgambar/model/Level;->id:I

    invoke-static {v0, v1}, Ly8/y;->A(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private I()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/g;->w:Lm8/a;

    invoke-virtual {v0}, Lm8/a;->g()I

    move-result v0

    return v0
.end method

.method private J()V
    .registers 2

    .line 1
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    invoke-virtual {v0}, Lj8/b;->s()V

    .line 2
    invoke-direct {p0}, Lcom/tebakgambar/question/g;->X()V

    .line 3
    invoke-direct {p0}, Lcom/tebakgambar/question/g;->W()V

    .line 4
    invoke-direct {p0}, Lcom/tebakgambar/question/g;->U()V

    .line 5
    invoke-direct {p0}, Lcom/tebakgambar/question/g;->V()V

    .line 6
    invoke-direct {p0}, Lcom/tebakgambar/question/g;->T()V

    return-void
.end method

.method private synthetic M(Lt1/h;)Lt1/h;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lt1/h;->s()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/Question;

    iput-object v0, p0, Lcom/tebakgambar/question/g;->z:Lcom/tebakgambar/model/Question;

    .line 2
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/tebakgambar/question/g;->D:Lcom/tebakgambar/model/Level;

    iget v1, v1, Lcom/tebakgambar/model/Level;->id:I

    invoke-static {v0, v1}, Ly8/y;->X(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/tebakgambar/question/g;->D:Lcom/tebakgambar/model/Level;

    iget v1, v1, Lcom/tebakgambar/model/Level;->id:I

    invoke-static {v0, v1}, Ly8/y;->n0(Landroid/content/Context;I)V

    :cond_21
    return-object p1
.end method

.method private synthetic N()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/g;->W:Ly8/u;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly8/u;->n(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic O()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/g;->J:Landroidx/databinding/m;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/m;->z(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/g;->K:Landroidx/databinding/m;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/m;->z(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic P()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/g;->Y:Ly8/u;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly8/u;->n(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic Q()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/g;->W:Ly8/u;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly8/u;->n(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic R(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/tebakgambar/model/Level;->fromGlobalIndex(I)Lcom/tebakgambar/model/Level;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/question/g;->D:Lcom/tebakgambar/model/Level;

    .line 2
    iget v1, v0, Lcom/tebakgambar/model/Level;->id:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tebakgambar/question/g;->F:I

    .line 3
    invoke-virtual {v0, p1}, Lcom/tebakgambar/model/Level;->getQuestionSavedData(I)Lcom/tebakgambar/model/QuestionSavedData;

    move-result-object p1

    iput-object p1, p0, Lcom/tebakgambar/question/g;->A:Lcom/tebakgambar/model/QuestionSavedData;

    if-eqz p1, :cond_20

    .line 4
    iget-boolean p1, p1, Lcom/tebakgambar/model/QuestionSavedData;->isBoss:Z

    if-eqz p1, :cond_20

    .line 5
    iget p1, p0, Lcom/tebakgambar/question/g;->F:I

    invoke-static {p1}, Lcom/tebakgambar/model/Level;->fromId(I)Lcom/tebakgambar/model/Level;

    move-result-object p1

    iput-object p1, p0, Lcom/tebakgambar/question/g;->E:Lcom/tebakgambar/model/Level;

    :cond_20
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic S(Lt1/h;)Lt1/h;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tebakgambar/question/g;->Y()V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/g;->P:Landroidx/lifecycle/t;

    invoke-direct {p0}, Lcom/tebakgambar/question/g;->H()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/t;->l(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/question/g;->L:Landroidx/databinding/m;

    iget-object v0, p0, Lcom/tebakgambar/question/g;->A:Lcom/tebakgambar/model/QuestionSavedData;

    iget-boolean v0, v0, Lcom/tebakgambar/model/QuestionSavedData;->isReceh:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/databinding/m;->z(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private T()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/g;->t:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    new-instance v1, Lcom/tebakgambar/question/g$b;

    invoke-direct {v1, p0}, Lcom/tebakgambar/question/g$b;-><init>(Lcom/tebakgambar/question/g;)V

    const-string v2, "ca-app-pub-7269282889157841/6758379613"

    invoke-virtual {v0, v2, v1}, Lj8/b;->w(Ljava/lang/String;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V

    return-void
.end method

.method private U()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/g;->v:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->c()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/tebakgambar/question/g$e;

    invoke-direct {v1, p0}, Lcom/tebakgambar/question/g$e;-><init>(Lcom/tebakgambar/question/g;)V

    .line 4
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ca-app-pub-7269282889157841/4068637097"

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->c(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    return-void
.end method

.method private V()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/g;->s:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    if-eqz v0, :cond_5

    return-void

    .line 2
    :cond_5
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    new-instance v1, Lcom/tebakgambar/question/g$c;

    invoke-direct {v1, p0}, Lcom/tebakgambar/question/g$c;-><init>(Lcom/tebakgambar/question/g;)V

    const-string v2, "ca-app-pub-7269282889157841/1760629611"

    invoke-virtual {v0, v2, v1}, Lj8/b;->w(Ljava/lang/String;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V

    return-void
.end method

.method private W()V
    .registers 3

    .line 1
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    new-instance v1, Lcom/tebakgambar/question/g$d;

    invoke-direct {v1, p0}, Lcom/tebakgambar/question/g$d;-><init>(Lcom/tebakgambar/question/g;)V

    invoke-virtual {v0, v1}, Lj8/b;->v(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    return-void
.end method

.method private X()V
    .registers 3

    .line 1
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    new-instance v1, Lcom/tebakgambar/question/g$a;

    invoke-direct {v1, p0}, Lcom/tebakgambar/question/g$a;-><init>(Lcom/tebakgambar/question/g;)V

    invoke-virtual {v0, v1}, Lj8/b;->v(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    return-void
.end method

.method private Z()I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/g;->D:Lcom/tebakgambar/model/Level;

    invoke-virtual {v0}, Lcom/tebakgambar/model/Level;->getQuestionSavedData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tebakgambar/model/QuestionSavedData;

    .line 2
    iget v3, v3, Lcom/tebakgambar/model/QuestionSavedData;->globalIndex:I

    iget v4, p0, Lcom/tebakgambar/question/g;->G:I

    if-ne v3, v4, :cond_20

    const/4 v2, 0x1

    goto :goto_c

    :cond_20
    if-eqz v2, :cond_c

    return v3

    :cond_23
    return v1
.end method

.method private a0(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    .line 1
    invoke-direct {p0, v0}, Lcom/tebakgambar/question/g;->B(I)V

    goto :goto_1c

    :cond_7
    const/4 v0, 0x3

    if-ne p1, v0, :cond_14

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/g;->V:Ly8/u;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ly8/u;->n(Ljava/lang/Object;)V

    goto :goto_1c

    :cond_14
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1c

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/question/g;->w:Lm8/a;

    invoke-virtual {p1}, Lm8/a;->k()V

    :cond_1c
    :goto_1c
    return-void
.end method

.method private f0()V
    .registers 6

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/tebakgambar/question/g;->C:Z

    .line 2
    iget-object v1, p0, Lcom/tebakgambar/question/g;->z:Lcom/tebakgambar/model/Question;

    invoke-virtual {v1}, Lcom/tebakgambar/model/Question;->clearHint()V

    .line 3
    iget-object v1, p0, Lcom/tebakgambar/question/g;->A:Lcom/tebakgambar/model/QuestionSavedData;

    invoke-virtual {v1}, Lcom/tebakgambar/model/QuestionSavedData;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "raja"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 4
    iget-object v1, p0, Lcom/tebakgambar/question/g;->M:Landroidx/lifecycle/t;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 5
    :cond_1d
    iget-object v1, p0, Lcom/tebakgambar/question/g;->A:Lcom/tebakgambar/model/QuestionSavedData;

    iget-boolean v1, v1, Lcom/tebakgambar/model/QuestionSavedData;->isBoss:Z

    if-nez v1, :cond_53

    .line 6
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/tebakgambar/question/g;->D:Lcom/tebakgambar/model/Level;

    iget v3, v2, Lcom/tebakgambar/model/Level;->id:I

    iget v4, p0, Lcom/tebakgambar/question/g;->G:I

    .line 7
    invoke-virtual {v2, v4}, Lcom/tebakgambar/model/Level;->getNextQuestionSavedData(I)Lcom/tebakgambar/model/QuestionSavedData;

    move-result-object v2

    iget v2, v2, Lcom/tebakgambar/model/QuestionSavedData;->globalIndex:I

    .line 8
    invoke-static {v1, v3, v2}, Ly8/y;->c(Landroid/content/Context;II)V

    .line 9
    iget-object v1, p0, Lcom/tebakgambar/question/g;->A:Lcom/tebakgambar/model/QuestionSavedData;

    iget-boolean v1, v1, Lcom/tebakgambar/model/QuestionSavedData;->isCheckPoint:Z

    if-eqz v1, :cond_42

    const/4 v1, 0x2

    .line 10
    invoke-static {v1}, Lcom/tebakgambar/question/g$f;->a(I)Lcom/tebakgambar/question/g$f;

    move-result-object v1

    goto :goto_46

    .line 11
    :cond_42
    invoke-static {v0}, Lcom/tebakgambar/question/g$f;->a(I)Lcom/tebakgambar/question/g$f;

    move-result-object v1

    .line 12
    :goto_46
    new-instance v2, Lt8/a2;

    invoke-direct {v2, p0}, Lt8/a2;-><init>(Lcom/tebakgambar/question/g;)V

    iput-object v2, v1, Lcom/tebakgambar/question/g$f;->c:Ljava/lang/Runnable;

    .line 13
    iget-object v2, p0, Lcom/tebakgambar/question/g;->T:Ly8/u;

    invoke-virtual {v2, v1}, Ly8/u;->n(Ljava/lang/Object;)V

    goto :goto_90

    .line 14
    :cond_53
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ly8/y;->N(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "JUST_COMPLETED_BOSS_QUESTION"

    .line 15
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 16
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 17
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v1

    iget v2, p0, Lcom/tebakgambar/question/g;->F:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ly8/y;->o0(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/tebakgambar/question/g;->E:Lcom/tebakgambar/model/Level;

    if-eqz v1, :cond_80

    .line 19
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tebakgambar/model/Level;->generateLevelIfNeeded(Landroid/content/Context;)V

    .line 20
    :cond_80
    invoke-static {v0}, Lcom/tebakgambar/question/g$f;->a(I)Lcom/tebakgambar/question/g$f;

    move-result-object v1

    .line 21
    new-instance v2, Lt8/y1;

    invoke-direct {v2, p0}, Lt8/y1;-><init>(Lcom/tebakgambar/question/g;)V

    iput-object v2, v1, Lcom/tebakgambar/question/g$f;->c:Ljava/lang/Runnable;

    .line 22
    iget-object v2, p0, Lcom/tebakgambar/question/g;->T:Ly8/u;

    invoke-virtual {v2, v1}, Ly8/u;->n(Ljava/lang/Object;)V

    .line 23
    :goto_90
    iget-object v1, p0, Lcom/tebakgambar/question/g;->D:Lcom/tebakgambar/model/Level;

    iget v1, v1, Lcom/tebakgambar/model/Level;->id:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_9f

    .line 24
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/tebakgambar/service/TGDownloadService;->w(Landroid/content/Context;)V

    .line 25
    :cond_9f
    iput-boolean v0, p0, Lcom/tebakgambar/question/g;->y:Z

    return-void
.end method

.method private g0()V
    .registers 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/tebakgambar/question/g;->C:Z

    .line 2
    invoke-direct {p0}, Lcom/tebakgambar/question/g;->h0()V

    const/4 v0, 0x5

    .line 3
    invoke-static {v0}, Lcom/tebakgambar/question/g$f;->a(I)Lcom/tebakgambar/question/g$f;

    move-result-object v0

    .line 4
    new-instance v1, Lt8/z1;

    invoke-direct {v1, p0}, Lt8/z1;-><init>(Lcom/tebakgambar/question/g;)V

    iput-object v1, v0, Lcom/tebakgambar/question/g$f;->c:Ljava/lang/Runnable;

    .line 5
    iget-object v1, p0, Lcom/tebakgambar/question/g;->T:Ly8/u;

    invoke-virtual {v1, v0}, Ly8/u;->n(Ljava/lang/Object;)V

    return-void
.end method

.method private h0()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/g;->w:Lm8/a;

    invoke-virtual {v0}, Lm8/a;->g()I

    move-result v0

    if-nez v0, :cond_1a

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/g;->w:Lm8/a;

    sget v1, Lm8/a;->z:I

    invoke-virtual {v0, v1}, Lm8/a;->A(I)V

    .line 3
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/tebakgambar/question/g;->D:Lcom/tebakgambar/model/Level;

    iget v1, v1, Lcom/tebakgambar/model/Level;->id:I

    invoke-static {v0, v1}, Ly8/y;->c0(Landroid/content/Context;I)V

    :cond_1a
    return-void
.end method

.method public static synthetic k(Lcom/tebakgambar/question/g;I)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/g;->R(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/tebakgambar/question/g;)V
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/question/g;->N()V

    return-void
.end method

.method public static synthetic m(Lcom/tebakgambar/question/g;Lt1/h;)Lt1/h;
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/g;->M(Lt1/h;)Lt1/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/tebakgambar/question/g;Lt1/h;)Lt1/h;
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/question/g;->S(Lt1/h;)Lt1/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lcom/tebakgambar/question/g;)V
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/question/g;->P()V

    return-void
.end method

.method public static synthetic p(Lcom/tebakgambar/question/g;)V
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/question/g;->Q()V

    return-void
.end method

.method public static synthetic q(Lcom/tebakgambar/question/g;)V
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/question/g;->O()V

    return-void
.end method

.method static synthetic s(Lcom/tebakgambar/question/g;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/g;->X()V

    return-void
.end method

.method static synthetic t(Lcom/tebakgambar/question/g;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/g;->T()V

    return-void
.end method

.method static synthetic u(Lcom/tebakgambar/question/g;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/tebakgambar/question/g;->a0(I)V

    return-void
.end method

.method static synthetic v(Lcom/tebakgambar/question/g;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/g;->V()V

    return-void
.end method

.method static synthetic w(Lcom/tebakgambar/question/g;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/g;->W()V

    return-void
.end method

.method static synthetic x(Lcom/tebakgambar/question/g;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/g;->U()V

    return-void
.end method

.method static synthetic z(Lcom/tebakgambar/question/g;)Z
    .registers 1

    .line 1
    iget-boolean p0, p0, Lcom/tebakgambar/question/g;->x:Z

    return p0
.end method


# virtual methods
.method D()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/g;->I:Landroidx/databinding/m;

    invoke-virtual {v0}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/tebakgambar/question/g;->I:Landroidx/databinding/m;

    invoke-virtual {v0}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_13

    :cond_11
    const-string v0, ""

    .line 2
    :goto_13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c1

    iget-boolean v1, p0, Lcom/tebakgambar/question/g;->C:Z

    if-nez v1, :cond_c1

    iget-object v1, p0, Lcom/tebakgambar/question/g;->z:Lcom/tebakgambar/model/Question;

    if-nez v1, :cond_23

    goto/16 :goto_c1

    .line 3
    :cond_23
    invoke-direct {p0, v0}, Lcom/tebakgambar/question/g;->C(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "click on check"

    const-string v3, "answer page"

    const-string v4, "clickAnswerPage"

    if-ne v0, v1, :cond_4d

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tebakgambar/question/g;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v2, v0}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/tebakgambar/question/g;->f0()V

    goto/16 :goto_c1

    :cond_4d
    const-string v1, " - false"

    const/4 v5, 0x3

    if-ne v0, v5, :cond_72

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tebakgambar/question/g;->G()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v2, v0}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/tebakgambar/question/g;->T:Ly8/u;

    invoke-static {v5}, Lcom/tebakgambar/question/g$f;->a(I)Lcom/tebakgambar/question/g$f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly8/u;->n(Ljava/lang/Object;)V

    goto :goto_c1

    :cond_72
    const/4 v5, 0x4

    if-ne v0, v5, :cond_c1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tebakgambar/question/g;->G()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v2, v0}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lcom/tebakgambar/question/g;->I()I

    move-result v0

    .line 10
    iget-object v1, p0, Lcom/tebakgambar/question/g;->D:Lcom/tebakgambar/model/Level;

    iget v1, v1, Lcom/tebakgambar/model/Level;->id:I

    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Ly8/y;->s(Landroid/content/Context;)I

    move-result v2

    if-lt v1, v2, :cond_a4

    add-int/lit8 v0, v0, -0x1

    .line 11
    iget-object v1, p0, Lcom/tebakgambar/question/g;->w:Lm8/a;

    invoke-virtual {v1, v0}, Lm8/a;->A(I)V

    :cond_a4
    if-gtz v0, :cond_b8

    .line 12
    iget-object v0, p0, Lcom/tebakgambar/question/g;->A:Lcom/tebakgambar/model/QuestionSavedData;

    iget-boolean v0, v0, Lcom/tebakgambar/model/QuestionSavedData;->isBoss:Z

    if-nez v0, :cond_b4

    .line 13
    iget-object v0, p0, Lcom/tebakgambar/question/g;->R:Ly8/u;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ly8/u;->n(Ljava/lang/Object;)V

    goto :goto_c1

    .line 14
    :cond_b4
    invoke-direct {p0}, Lcom/tebakgambar/question/g;->g0()V

    goto :goto_c1

    .line 15
    :cond_b8
    iget-object v0, p0, Lcom/tebakgambar/question/g;->T:Ly8/u;

    invoke-static {v5}, Lcom/tebakgambar/question/g$f;->a(I)Lcom/tebakgambar/question/g$f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly8/u;->n(Ljava/lang/Object;)V

    :cond_c1
    :goto_c1
    return-void
.end method

.method F()V
    .registers 2

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/tebakgambar/question/g;->B(I)V

    return-void
.end method

.method G()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/tebakgambar/question/g;->G:I

    invoke-static {v1}, Lcom/tebakgambar/model/Level;->getLevelFolderNameByGlobalIndex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tebakgambar/question/g;->G:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method K()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/g;->z:Lcom/tebakgambar/model/Question;

    invoke-virtual {v0}, Lcom/tebakgambar/model/Question;->isNoHintUnlocked()Z

    move-result v0

    return v0
.end method

.method L()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/g;->z:Lcom/tebakgambar/model/Question;

    iget-object v0, v0, Lcom/tebakgambar/model/Question;->type:Ljava/lang/String;

    const-string v1, "raja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public Y()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/g;->N:Landroidx/lifecycle/t;

    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v1

    iget v2, p0, Lcom/tebakgambar/question/g;->G:I

    iget-object v3, p0, Lcom/tebakgambar/question/g;->A:Lcom/tebakgambar/model/QuestionSavedData;

    invoke-virtual {v3}, Lcom/tebakgambar/model/QuestionSavedData;->getType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tebakgambar/question/g;->O:Lt1/e;

    invoke-virtual {v4}, Lt1/e;->d()Lt1/c;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/tebakgambar/model/Question;->getQuestion(Landroid/content/Context;ILjava/lang/String;Lt1/c;)Lt1/h;

    move-result-object v1

    new-instance v2, Lt8/c2;

    invoke-direct {v2, p0}, Lt8/c2;-><init>(Lcom/tebakgambar/question/g;)V

    .line 2
    invoke-virtual {v1, v2}, Lt1/h;->z(Lt1/f;)Lt1/h;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Landroidx/lifecycle/t;->l(Ljava/lang/Object;)V

    return-void
.end method

.method public b0()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/g;->g0()V

    return-void
.end method

.method public c0()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/tebakgambar/question/g;->x:Z

    return-void
.end method

.method public d(Ljava/lang/String;ILandroid/net/Uri;)V
    .registers 4

    .line 1
    iget-object p2, p0, Lcom/tebakgambar/question/g;->U:Ly8/u;

    invoke-virtual {p2, p1}, Ly8/u;->n(Ljava/lang/Object;)V

    return-void
.end method

.method d0()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/g;->M:Landroidx/lifecycle/t;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/tebakgambar/question/g;->M:Landroidx/lifecycle/t;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    .line 2
    :cond_17
    iget-object v0, p0, Lcom/tebakgambar/question/g;->w:Lm8/a;

    invoke-virtual {v0}, Lm8/a;->g()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/tebakgambar/question/g;->D:Lcom/tebakgambar/model/Level;

    iget v1, v1, Lcom/tebakgambar/model/Level;->id:I

    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Ly8/y;->s(Landroid/content/Context;)I

    move-result v2

    if-lt v1, v2, :cond_30

    .line 4
    iget-object v1, p0, Lcom/tebakgambar/question/g;->w:Lm8/a;

    invoke-virtual {v1}, Lm8/a;->b()V

    :cond_30
    if-lez v0, :cond_34

    const/4 v0, 0x6

    goto :goto_35

    :cond_34
    const/4 v0, 0x5

    .line 5
    :goto_35
    invoke-static {v0}, Lcom/tebakgambar/question/g$f;->a(I)Lcom/tebakgambar/question/g$f;

    move-result-object v0

    .line 6
    new-instance v1, Lt8/x1;

    invoke-direct {v1, p0}, Lt8/x1;-><init>(Lcom/tebakgambar/question/g;)V

    iput-object v1, v0, Lcom/tebakgambar/question/g$f;->c:Ljava/lang/Runnable;

    .line 7
    iget-object v1, p0, Lcom/tebakgambar/question/g;->T:Ly8/u;

    invoke-virtual {v1, v0}, Ly8/u;->n(Ljava/lang/Object;)V

    return-void
.end method

.method e0()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/question/g;->Z()I

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    iget-object v1, p0, Lcom/tebakgambar/question/g;->Z:Ly8/u;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ly8/u;->n(Ljava/lang/Object;)V

    goto :goto_1a

    .line 3
    :cond_10
    iget-object v0, p0, Lcom/tebakgambar/question/g;->X:Ly8/u;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly8/u;->n(Ljava/lang/Object;)V

    :goto_1a
    return-void
.end method

.method protected h()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/g0;->h()V

    .line 2
    invoke-direct {p0}, Lcom/tebakgambar/question/g;->E()V

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/question/g;->O:Lt1/e;

    invoke-virtual {v0}, Lt1/e;->b()V

    .line 4
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v0

    iget v1, p0, Lcom/tebakgambar/question/g;->G:I

    invoke-static {v0, v1}, Ly8/y;->i(Landroid/content/Context;I)V

    return-void
.end method

.method public i0(I)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/a;->a()Lcom/google/firebase/crashlytics/a;

    move-result-object v0

    const-string v1, "RegularQuestionActivity.globalIndex"

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/crashlytics/a;->e(Ljava/lang/String;I)V

    .line 2
    iput p1, p0, Lcom/tebakgambar/question/g;->G:I

    .line 3
    invoke-direct {p0}, Lcom/tebakgambar/question/g;->J()V

    .line 4
    new-instance v0, Lt8/b2;

    invoke-direct {v0, p0, p1}, Lt8/b2;-><init>(Lcom/tebakgambar/question/g;I)V

    invoke-static {v0}, Lt1/h;->d(Ljava/util/concurrent/Callable;)Lt1/h;

    move-result-object p1

    new-instance v0, Lt8/d2;

    invoke-direct {v0, p0}, Lt8/d2;-><init>(Lcom/tebakgambar/question/g;)V

    sget-object v1, Lt1/h;->i:Ljava/util/concurrent/ExecutorService;

    .line 5
    invoke-virtual {p1, v0, v1}, Lt1/h;->m(Lt1/f;Ljava/util/concurrent/Executor;)Lt1/h;

    return-void
.end method

.method j0()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/g;->A:Lcom/tebakgambar/model/QuestionSavedData;

    invoke-virtual {v0}, Lcom/tebakgambar/model/QuestionSavedData;->isHintAvailable()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 2
    :cond_9
    iget-object v0, p0, Lcom/tebakgambar/question/g;->z:Lcom/tebakgambar/model/Question;

    invoke-virtual {v0}, Lcom/tebakgambar/model/Question;->isAllHintUnlocked()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/question/g;->Q:Ly8/u;

    iget-object v1, p0, Lcom/tebakgambar/question/g;->z:Lcom/tebakgambar/model/Question;

    invoke-virtual {v1}, Lcom/tebakgambar/model/Question;->getHint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly8/u;->n(Ljava/lang/Object;)V

    goto :goto_50

    .line 4
    :cond_1d
    invoke-direct {p0}, Lcom/tebakgambar/question/g;->H()I

    move-result v0

    if-nez v0, :cond_2b

    .line 5
    iget-object v0, p0, Lcom/tebakgambar/question/g;->S:Ly8/u;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ly8/u;->n(Ljava/lang/Object;)V

    goto :goto_50

    :cond_2b
    add-int/lit8 v0, v0, -0x1

    .line 6
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/tebakgambar/question/g;->D:Lcom/tebakgambar/model/Level;

    iget v2, v2, Lcom/tebakgambar/model/Level;->id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ly8/y;->k0(Landroid/content/Context;ILjava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/tebakgambar/question/g;->P:Landroidx/lifecycle/t;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lcom/tebakgambar/question/g;->Q:Ly8/u;

    iget-object v1, p0, Lcom/tebakgambar/question/g;->z:Lcom/tebakgambar/model/Question;

    invoke-virtual {v1}, Lcom/tebakgambar/model/Question;->getHintAndUnlock()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly8/u;->n(Ljava/lang/Object;)V

    :goto_50
    return-void
.end method

.method k0()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/g;->A:Lcom/tebakgambar/model/QuestionSavedData;

    invoke-virtual {v0}, Lcom/tebakgambar/model/QuestionSavedData;->isHintAvailable()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 2
    :cond_9
    iget-object v0, p0, Lcom/tebakgambar/question/g;->Q:Ly8/u;

    iget-object v1, p0, Lcom/tebakgambar/question/g;->z:Lcom/tebakgambar/model/Question;

    invoke-virtual {v1}, Lcom/tebakgambar/model/Question;->getHint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly8/u;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public l0()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/g;->T:Ly8/u;

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/tebakgambar/question/g$f;->a(I)Lcom/tebakgambar/question/g$f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly8/u;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public m0()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/g;->T:Ly8/u;

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/tebakgambar/question/g$f;->a(I)Lcom/tebakgambar/question/g$f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly8/u;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public r()Z
    .registers 12

    .line 1
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ly8/y;->N(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "TOTAL_CLOSE_FREE_ANSWER_BOTTOM_SHEET"

    const/4 v2, 0x0

    .line 2
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-ge v3, v5, :cond_14

    return v4

    .line 3
    :cond_14
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v3, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 4
    new-instance v5, Ljava/util/Date;

    .line 5
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-string v8, "LAST_DATE_REQUEST_IN_APP_REVIEW"

    invoke-interface {v0, v8, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 6
    sget-object v6, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v5, v3, v6}, Ly8/y;->t(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    const-wide/16 v9, 0x7

    cmp-long v7, v5, v9

    if-lez v7, :cond_3a

    const/4 v5, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v5, 0x0

    :goto_3b
    if-eqz v5, :cond_4f

    .line 7
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 8
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 9
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-interface {v0, v8, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 10
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v4

    :cond_4f
    return v2
.end method

.method public y(ILandroid/net/Uri;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/question/g;->U:Ly8/u;

    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object p2

    const v0, 0x7f1201bf

    invoke-virtual {p2, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ly8/u;->n(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.tebakgambar.question.g.a (com.tebakgambar.question.g$a)
.class Lcom/tebakgambar/question/g$a;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "RegularQuestionViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/g;->X()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/question/g;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/g$a;->a:Lcom/tebakgambar/question/g;

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

    if-eqz v0, :cond_14

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/question/g$a;->a:Lcom/tebakgambar/question/g;

    iget-object v0, v0, Lcom/tebakgambar/question/g;->w:Lm8/a;

    invoke-virtual {v0}, Lm8/a;->k()V

    .line 4
    :cond_14
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj8/b;->x(Z)V

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

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/question/g$a;->a:Lcom/tebakgambar/question/g;

    invoke-static {v0}, Lcom/tebakgambar/question/g;->s(Lcom/tebakgambar/question/g;)V

    return-void
.end method

###### Class com.tebakgambar.question.g.b (com.tebakgambar.question.g$b)
.class Lcom/tebakgambar/question/g$b;
.super Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;
.source "RegularQuestionViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/g;->T()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/question/g;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/g$b;->a:Lcom/tebakgambar/question/g;

    invoke-direct {p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/LoadAdError;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->a(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/g$b;->a:Lcom/tebakgambar/question/g;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/tebakgambar/question/g;->t:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lcom/tebakgambar/question/g$b;->c(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    return-void
.end method

.method public c(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->b(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/g$b;->a:Lcom/tebakgambar/question/g;

    iput-object p1, v0, Lcom/tebakgambar/question/g;->t:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 3
    new-instance v0, Lcom/tebakgambar/question/g$b$a;

    invoke-direct {v0, p0}, Lcom/tebakgambar/question/g$b$a;-><init>(Lcom/tebakgambar/question/g$b;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->d(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    return-void
.end method

###### Class com.tebakgambar.question.g.b.a (com.tebakgambar.question.g$b$a)
.class Lcom/tebakgambar/question/g$b$a;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "RegularQuestionViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/g$b;->c(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/question/g$b;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/g$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/g$b$a;->a:Lcom/tebakgambar/question/g$b;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/g$b$a;->a:Lcom/tebakgambar/question/g$b;

    iget-object v0, v0, Lcom/tebakgambar/question/g$b;->a:Lcom/tebakgambar/question/g;

    invoke-static {v0}, Lcom/tebakgambar/question/g;->t(Lcom/tebakgambar/question/g;)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/g$b$a;->a:Lcom/tebakgambar/question/g$b;

    iget-object v0, v0, Lcom/tebakgambar/question/g$b;->a:Lcom/tebakgambar/question/g;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/tebakgambar/question/g;->u(Lcom/tebakgambar/question/g;I)V

    return-void
.end method

.method public e()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/g$b$a;->a:Lcom/tebakgambar/question/g$b;

    iget-object v0, v0, Lcom/tebakgambar/question/g$b;->a:Lcom/tebakgambar/question/g;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tebakgambar/question/g;->t:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-void
.end method

###### Class com.tebakgambar.question.g.c (com.tebakgambar.question.g$c)
.class Lcom/tebakgambar/question/g$c;
.super Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;
.source "RegularQuestionViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/g;->V()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/question/g;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/g$c;->a:Lcom/tebakgambar/question/g;

    invoke-direct {p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/LoadAdError;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->a(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/g$c;->a:Lcom/tebakgambar/question/g;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/tebakgambar/question/g;->s:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lcom/tebakgambar/question/g$c;->c(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    return-void
.end method

.method public c(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->b(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/g$c;->a:Lcom/tebakgambar/question/g;

    iput-object p1, v0, Lcom/tebakgambar/question/g;->s:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    .line 3
    new-instance v0, Lcom/tebakgambar/question/g$c$a;

    invoke-direct {v0, p0}, Lcom/tebakgambar/question/g$c$a;-><init>(Lcom/tebakgambar/question/g$c;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->d(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    return-void
.end method

###### Class com.tebakgambar.question.g.c.a (com.tebakgambar.question.g$c$a)
.class Lcom/tebakgambar/question/g$c$a;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "RegularQuestionViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/g$c;->c(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/question/g$c;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/g$c;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/g$c$a;->a:Lcom/tebakgambar/question/g$c;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/g$c$a;->a:Lcom/tebakgambar/question/g$c;

    iget-object v0, v0, Lcom/tebakgambar/question/g$c;->a:Lcom/tebakgambar/question/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tebakgambar/question/g;->u(Lcom/tebakgambar/question/g;I)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/g$c$a;->a:Lcom/tebakgambar/question/g$c;

    iget-object v0, v0, Lcom/tebakgambar/question/g$c;->a:Lcom/tebakgambar/question/g;

    invoke-static {v0}, Lcom/tebakgambar/question/g;->v(Lcom/tebakgambar/question/g;)V

    return-void
.end method

.method public e()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/question/g$c$a;->a:Lcom/tebakgambar/question/g$c;

    iget-object v0, v0, Lcom/tebakgambar/question/g$c;->a:Lcom/tebakgambar/question/g;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tebakgambar/question/g;->s:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-void
.end method

###### Class com.tebakgambar.question.g.d (com.tebakgambar.question.g$d)
.class Lcom/tebakgambar/question/g$d;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "RegularQuestionViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/g;->W()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/question/g;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/g$d;->a:Lcom/tebakgambar/question/g;

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
    iget-object v0, p0, Lcom/tebakgambar/question/g$d;->a:Lcom/tebakgambar/question/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tebakgambar/question/g;->u(Lcom/tebakgambar/question/g;I)V

    .line 4
    :cond_13
    invoke-static {}, Lj8/b;->l()Lj8/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj8/b;->x(Z)V

    .line 5
    iget-object v0, p0, Lcom/tebakgambar/question/g$d;->a:Lcom/tebakgambar/question/g;

    invoke-static {v0}, Lcom/tebakgambar/question/g;->w(Lcom/tebakgambar/question/g;)V

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

###### Class com.tebakgambar.question.g.e (com.tebakgambar.question.g$e)
.class Lcom/tebakgambar/question/g$e;
.super Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
.source "RegularQuestionViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/g;->U()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/question/g;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/g;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/g$e;->a:Lcom/tebakgambar/question/g;

    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/ads/LoadAdError;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->a(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/question/g$e;->a:Lcom/tebakgambar/question/g;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/tebakgambar/question/g;->v:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-virtual {p0, p1}, Lcom/tebakgambar/question/g$e;->c(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    return-void
.end method

.method public c(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdLoadCallback;->b(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/g$e;->a:Lcom/tebakgambar/question/g;

    iput-object p1, v0, Lcom/tebakgambar/question/g;->v:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 3
    new-instance v0, Lcom/tebakgambar/question/g$e$a;

    invoke-direct {v0, p0}, Lcom/tebakgambar/question/g$e$a;-><init>(Lcom/tebakgambar/question/g$e;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->d(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    return-void
.end method

###### Class com.tebakgambar.question.g.e.a (com.tebakgambar.question.g$e$a)
.class Lcom/tebakgambar/question/g$e$a;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "RegularQuestionViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/question/g$e;->c(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/question/g$e;


# direct methods
.method constructor <init>(Lcom/tebakgambar/question/g$e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/question/g$e$a;->a:Lcom/tebakgambar/question/g$e;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->b()V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/g$e$a;->a:Lcom/tebakgambar/question/g$e;

    iget-object v0, v0, Lcom/tebakgambar/question/g$e;->a:Lcom/tebakgambar/question/g;

    invoke-static {v0}, Lcom/tebakgambar/question/g;->z(Lcom/tebakgambar/question/g;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/question/g$e$a;->a:Lcom/tebakgambar/question/g$e;

    iget-object v0, v0, Lcom/tebakgambar/question/g$e;->a:Lcom/tebakgambar/question/g;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/tebakgambar/question/g;->u(Lcom/tebakgambar/question/g;I)V

    goto :goto_1d

    .line 4
    :cond_16
    iget-object v0, p0, Lcom/tebakgambar/question/g$e$a;->a:Lcom/tebakgambar/question/g$e;

    iget-object v0, v0, Lcom/tebakgambar/question/g$e;->a:Lcom/tebakgambar/question/g;

    invoke-virtual {v0}, Lcom/tebakgambar/question/g;->e0()V

    .line 5
    :goto_1d
    iget-object v0, p0, Lcom/tebakgambar/question/g$e$a;->a:Lcom/tebakgambar/question/g$e;

    iget-object v0, v0, Lcom/tebakgambar/question/g$e;->a:Lcom/tebakgambar/question/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tebakgambar/question/g;->A(Lcom/tebakgambar/question/g;Z)Z

    return-void
.end method

.method public e()V
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;->e()V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/question/g$e$a;->a:Lcom/tebakgambar/question/g$e;

    iget-object v0, v0, Lcom/tebakgambar/question/g$e;->a:Lcom/tebakgambar/question/g;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tebakgambar/question/g;->v:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 3
    invoke-static {v0}, Lcom/tebakgambar/question/g;->x(Lcom/tebakgambar/question/g;)V

    return-void
.end method

###### Class com.tebakgambar.question.g.f (com.tebakgambar.question.g$f)
.class Lcom/tebakgambar/question/g$f;
.super Ljava/lang/Object;
.source "RegularQuestionViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/question/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
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
    iput p1, p0, Lcom/tebakgambar/question/g$f;->a:I

    .line 3
    iput p2, p0, Lcom/tebakgambar/question/g$f;->b:I

    return-void
.end method

.method static a(I)Lcom/tebakgambar/question/g$f;
    .registers 5

    const v0, 0x7f110003

    const v1, 0x7f110009

    const v2, 0x7f110002

    const/4 v3, 0x0

    packed-switch p0, :pswitch_data_40

    const/4 v0, 0x0

    goto :goto_3a

    :pswitch_f
    const v3, 0x7f0801a6

    goto :goto_3a

    :pswitch_13
    const v3, 0x7f0801a7

    goto :goto_3a

    :pswitch_17
    const v3, 0x7f08013a

    goto :goto_1e

    :pswitch_1b
    const v3, 0x7f080139

    :goto_1e
    const v0, 0x7f110009

    goto :goto_3a

    :pswitch_22
    const v3, 0x7f080156

    const v0, 0x7f11000a

    goto :goto_3a

    :pswitch_29
    const v3, 0x7f08013b

    goto :goto_37

    :pswitch_2d
    const v3, 0x7f080134

    const v0, 0x7f110004

    goto :goto_3a

    :pswitch_34
    const v3, 0x7f080133

    :goto_37
    const v0, 0x7f110002

    .line 1
    :goto_3a
    new-instance p0, Lcom/tebakgambar/question/g$f;

    invoke-direct {p0, v3, v0}, Lcom/tebakgambar/question/g$f;-><init>(II)V

    return-object p0

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_34
        :pswitch_2d
        :pswitch_29
        :pswitch_22
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
    .end packed-switch
.end method

.method static b(I)Lcom/tebakgambar/question/g$f;
    .registers 3

    const v0, 0x7f110008

    const/4 v1, 0x1

    if-ne p0, v1, :cond_f

    .line 1
    new-instance p0, Lcom/tebakgambar/question/g$f;

    const v1, 0x7f080137

    invoke-direct {p0, v1, v0}, Lcom/tebakgambar/question/g$f;-><init>(II)V

    return-object p0

    .line 2
    :cond_f
    new-instance p0, Lcom/tebakgambar/question/g$f;

    const v1, 0x7f080138

    invoke-direct {p0, v1, v0}, Lcom/tebakgambar/question/g$f;-><init>(II)V

    return-object p0
.end method

###### Class t8.a2 (t8.a2)
.class public final synthetic Lt8/a2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/g;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/g;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/a2;->o:Lcom/tebakgambar/question/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lt8/a2;->o:Lcom/tebakgambar/question/g;

    invoke-static {v0}, Lcom/tebakgambar/question/g;->q(Lcom/tebakgambar/question/g;)V

    return-void
.end method

###### Class t8.b2 (t8.b2)
.class public final synthetic Lt8/b2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/question/g;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/g;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/b2;->a:Lcom/tebakgambar/question/g;

    iput p2, p0, Lt8/b2;->b:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lt8/b2;->a:Lcom/tebakgambar/question/g;

    iget v1, p0, Lt8/b2;->b:I

    invoke-static {v0, v1}, Lcom/tebakgambar/question/g;->k(Lcom/tebakgambar/question/g;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class t8.c2 (t8.c2)
.class public final synthetic Lt8/c2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt1/f;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/question/g;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/g;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/c2;->a:Lcom/tebakgambar/question/g;

    return-void
.end method


# virtual methods
.method public final a(Lt1/h;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lt8/c2;->a:Lcom/tebakgambar/question/g;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/g;->m(Lcom/tebakgambar/question/g;Lt1/h;)Lt1/h;

    move-result-object p1

    return-object p1
.end method

###### Class t8.d2 (t8.d2)
.class public final synthetic Lt8/d2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt1/f;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/question/g;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/g;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/d2;->a:Lcom/tebakgambar/question/g;

    return-void
.end method


# virtual methods
.method public final a(Lt1/h;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lt8/d2;->a:Lcom/tebakgambar/question/g;

    invoke-static {v0, p1}, Lcom/tebakgambar/question/g;->n(Lcom/tebakgambar/question/g;Lt1/h;)Lt1/h;

    move-result-object p1

    return-object p1
.end method

###### Class t8.x1 (t8.x1)
.class public final synthetic Lt8/x1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/g;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/g;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/x1;->o:Lcom/tebakgambar/question/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lt8/x1;->o:Lcom/tebakgambar/question/g;

    invoke-static {v0}, Lcom/tebakgambar/question/g;->l(Lcom/tebakgambar/question/g;)V

    return-void
.end method

###### Class t8.y1 (t8.y1)
.class public final synthetic Lt8/y1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/g;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/g;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/y1;->o:Lcom/tebakgambar/question/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lt8/y1;->o:Lcom/tebakgambar/question/g;

    invoke-static {v0}, Lcom/tebakgambar/question/g;->o(Lcom/tebakgambar/question/g;)V

    return-void
.end method

###### Class t8.z1 (t8.z1)
.class public final synthetic Lt8/z1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/question/g;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/question/g;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/z1;->o:Lcom/tebakgambar/question/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lt8/z1;->o:Lcom/tebakgambar/question/g;

    invoke-static {v0}, Lcom/tebakgambar/question/g;->p(Lcom/tebakgambar/question/g;)V

    return-void
.end method
