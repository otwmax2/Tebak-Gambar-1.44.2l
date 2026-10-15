###### Class j8.x (j8.x)
.class public Lj8/x;
.super Landroidx/lifecycle/a;
.source "BaseViewModel.java"

# interfaces
.implements Ls8/f$a;


# instance fields
.field protected A:Ljava/lang/String;

.field private B:Z

.field protected s:Ly8/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly8/u<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected t:Ly8/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly8/u<",
            "Lcom/tebakgambar/model/CustomBanner;",
            ">;"
        }
    .end annotation
.end field

.field protected u:Ly8/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly8/u<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected v:Landroidx/lifecycle/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/t<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected w:Ly8/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly8/u<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected x:Ly8/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly8/u<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected y:Lcom/google/firebase/auth/FirebaseAuth;

.field protected z:Lcom/tebakgambar/model/UserData;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    .line 2
    new-instance p1, Ly8/u;

    invoke-direct {p1}, Ly8/u;-><init>()V

    iput-object p1, p0, Lj8/x;->s:Ly8/u;

    .line 3
    new-instance p1, Ly8/u;

    invoke-direct {p1}, Ly8/u;-><init>()V

    iput-object p1, p0, Lj8/x;->t:Ly8/u;

    .line 4
    new-instance p1, Ly8/u;

    invoke-direct {p1}, Ly8/u;-><init>()V

    iput-object p1, p0, Lj8/x;->u:Ly8/u;

    .line 5
    new-instance p1, Landroidx/lifecycle/t;

    invoke-direct {p1}, Landroidx/lifecycle/t;-><init>()V

    iput-object p1, p0, Lj8/x;->v:Landroidx/lifecycle/t;

    .line 6
    new-instance p1, Ly8/u;

    invoke-direct {p1}, Ly8/u;-><init>()V

    iput-object p1, p0, Lj8/x;->w:Ly8/u;

    .line 7
    new-instance p1, Ly8/u;

    invoke-direct {p1}, Ly8/u;-><init>()V

    iput-object p1, p0, Lj8/x;->x:Ly8/u;

    const-string p1, ""

    .line 8
    iput-object p1, p0, Lj8/x;->A:Ljava/lang/String;

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lj8/x;->B:Z

    .line 10
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    iput-object p1, p0, Lj8/x;->y:Lcom/google/firebase/auth/FirebaseAuth;

    return-void
.end method

.method public static synthetic k(Lj8/x;Lcom/google/android/gms/tasks/Task;)V
    .registers 2

    invoke-direct {p0, p1}, Lj8/x;->r(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic l(Lj8/x;Ljava/lang/String;Lcom/tebakgambar/model/request/LoginRequest;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1, p2}, Lj8/x;->s(Ljava/lang/String;Lcom/tebakgambar/model/request/LoginRequest;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lj8/x;Lcom/google/android/gms/tasks/Task;)V
    .registers 2

    invoke-direct {p0, p1}, Lj8/x;->t(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method static synthetic n(Lj8/x;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lj8/x;->o(Ljava/lang/String;)V

    return-void
.end method

.method private o(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {}, Lm8/a;->f()Lm8/a;

    move-result-object v0

    invoke-virtual {v0}, Lm8/a;->o()Z

    move-result v0

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lj8/x;->B:Z

    if-nez v0, :cond_13

    .line 2
    iget-object v0, p0, Lj8/x;->u:Ly8/u;

    invoke-virtual {v0, p1}, Ly8/u;->n(Ljava/lang/Object;)V

    :cond_13
    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lj8/x;->B:Z

    return-void
.end method

.method private synthetic r(Lcom/google/android/gms/tasks/Task;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lj8/x;->v:Landroidx/lifecycle/t;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->t()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 3
    invoke-virtual {p0}, Lj8/x;->v()V

    :cond_10
    return-void
.end method

.method private synthetic s(Ljava/lang/String;Lcom/tebakgambar/model/request/LoginRequest;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tebakgambar/network/TebakGambarApi;->b()Lcom/tebakgambar/network/TebakGambarApi$Interface;

    move-result-object v0

    invoke-static {p1}, Lcom/tebakgambar/model/RequestHeader;->create(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/tebakgambar/network/TebakGambarApi$Interface;->login(Ljava/util/Map;Lcom/tebakgambar/model/request/LoginRequest;)Lwa/b;

    move-result-object p1

    new-instance p2, Lj8/x$a;

    invoke-direct {p2, p0}, Lj8/x$a;-><init>(Lj8/x;)V

    invoke-interface {p1, p2}, Lwa/b;->v3(Lwa/d;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic t(Lcom/google/android/gms/tasks/Task;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->t()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/u;

    invoke-virtual {v0}, Lg5/u;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg5/u;

    invoke-virtual {p1}, Lg5/u;->c()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/tebakgambar/model/LocalUserData;->getInstance()Lcom/tebakgambar/model/LocalUserData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/model/LocalUserData;->getSyncToken()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/tebakgambar/model/request/LoginRequest;

    invoke-direct {v1}, Lcom/tebakgambar/model/request/LoginRequest;-><init>()V

    .line 5
    iput-object v0, v1, Lcom/tebakgambar/model/request/LoginRequest;->oldSyncToken:Ljava/lang/String;

    .line 6
    invoke-static {}, Lm8/a;->f()Lm8/a;

    move-result-object v0

    invoke-virtual {v0}, Lm8/a;->d()Lcom/tebakgambar/model/GameData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/model/GameData;->toGameToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tebakgambar/model/request/LoginRequest;->gameToken:Ljava/lang/String;

    .line 7
    new-instance v0, Lj8/w;

    invoke-direct {v0, p0, p1, v1}, Lj8/w;-><init>(Lj8/x;Ljava/lang/String;Lcom/tebakgambar/model/request/LoginRequest;)V

    invoke-static {v0}, Lt1/h;->d(Ljava/util/concurrent/Callable;)Lt1/h;

    goto :goto_5d

    .line 8
    :cond_48
    iget-object p1, p0, Lj8/x;->v:Landroidx/lifecycle/t;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object p1

    const v0, 0x7f12009d

    invoke-virtual {p1, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lj8/x;->o(Ljava/lang/String;)V

    :goto_5d
    return-void
.end method

.method private u()V
    .registers 3

    .line 1
    iget-object v0, p0, Lj8/x;->y:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lg5/s;

    move-result-object v0

    if-eqz v0, :cond_9

    return-void

    .line 2
    :cond_9
    iget-object v0, p0, Lj8/x;->v:Landroidx/lifecycle/t;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lj8/x;->y:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->c()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lj8/u;

    invoke-direct {v1, p0}, Lj8/u;-><init>(Lj8/x;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method A()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lj8/x;->v()V

    return-void
.end method

.method public B()V
    .registers 1

    return-void
.end method

.method public C()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lj8/x;->p()Lg5/s;

    move-result-object v0

    if-nez v0, :cond_a

    .line 2
    invoke-direct {p0}, Lj8/x;->u()V

    goto :goto_17

    .line 3
    :cond_a
    invoke-static {}, Lm8/a;->f()Lm8/a;

    move-result-object v0

    invoke-virtual {v0}, Lm8/a;->o()Z

    move-result v0

    if-nez v0, :cond_17

    .line 4
    invoke-virtual {p0}, Lj8/x;->v()V

    :cond_17
    :goto_17
    return-void
.end method

.method public D()Ljava/lang/String;
    .registers 6

    .line 1
    iget-object v0, p0, Lj8/x;->y:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lg5/s;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 2
    invoke-virtual {v0}, Lg5/s;->c4()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_25

    .line 3
    :cond_f
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f1201a1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lj8/x;->z:Lcom/tebakgambar/model/UserData;

    iget-object v4, v4, Lcom/tebakgambar/model/UserData;->fullname:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_25
    :goto_25
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lg5/s;)V
    .registers 4

    .line 1
    invoke-static {}, Lm8/a;->f()Lm8/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lm8/a;->w(Z)V

    if-nez p1, :cond_e

    .line 2
    invoke-direct {p0}, Lj8/x;->u()V

    goto :goto_11

    .line 3
    :cond_e
    invoke-virtual {p0}, Lj8/x;->v()V

    :goto_11
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lj8/x;->A:Ljava/lang/String;

    return-object v0
.end method

.method public p()Lg5/s;
    .registers 2

    .line 1
    iget-object v0, p0, Lj8/x;->y:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lg5/s;

    move-result-object v0

    return-object v0
.end method

.method public q()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lj8/x;->y:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lg5/s;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 2
    invoke-virtual {v0}, Lg5/s;->c4()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public v()V
    .registers 4

    .line 1
    iget-object v0, p0, Lj8/x;->y:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lg5/s;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 2
    :cond_9
    iget-object v1, p0, Lj8/x;->v:Landroidx/lifecycle/t;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lg5/s;->W3(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lj8/v;

    invoke-direct {v1, p0}, Lj8/v;-><init>(Lj8/x;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public w()V
    .registers 3

    .line 1
    iget-object v0, p0, Lj8/x;->y:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->e()V

    .line 2
    invoke-static {}, Lm8/a;->f()Lm8/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lm8/a;->w(Z)V

    .line 3
    invoke-static {}, Lm8/a;->f()Lm8/a;

    move-result-object v0

    invoke-virtual {v0}, Lm8/a;->r()V

    .line 4
    invoke-direct {p0}, Lj8/x;->u()V

    return-void
.end method

.method x()V
    .registers 4

    const-string v0, "clickLogoutPopUp"

    const-string v1, "logout popup"

    const-string v2, "click on logout"

    .line 1
    invoke-static {v0, v1, v2}, Lm8/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lj8/x;->w()V

    return-void
.end method

.method public z()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lj8/x;->B:Z

    .line 2
    invoke-virtual {p0}, Lj8/x;->w()V

    return-void
.end method

###### Class j8.x.a (j8.x$a)
.class Lj8/x$a;
.super Ljava/lang/Object;
.source "BaseViewModel.java"

# interfaces
.implements Lwa/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj8/x;->s(Ljava/lang/String;Lcom/tebakgambar/model/request/LoginRequest;)Ljava/lang/Object;
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
        "Lcom/tebakgambar/model/response/LoginResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lj8/x;


# direct methods
.method constructor <init>(Lj8/x;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lj8/x$a;->a:Lj8/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lwa/b;Lwa/l;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/response/LoginResult;",
            ">;>;",
            "Lwa/l<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/response/LoginResult;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lj8/x$a;->a:Lj8/x;

    iget-object p1, p1, Lj8/x;->v:Landroidx/lifecycle/t;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p2}, Lwa/l;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/model/response/ApiResponse3;

    .line 3
    invoke-virtual {p2}, Lwa/l;->f()Z

    move-result v0

    const v1, 0x7f12009d

    if-eqz v0, :cond_b5

    if-eqz p1, :cond_b5

    .line 4
    iget-object v0, p1, Lcom/tebakgambar/model/response/ApiResponse3;->header:Lcom/tebakgambar/model/response/ApiResponse3$Header;

    iget v0, v0, Lcom/tebakgambar/model/response/ApiResponse3$Header;->statusCode:I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_9a

    invoke-virtual {p2}, Lwa/l;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9a

    .line 5
    new-instance p1, Lcom/tebakgambar/model/GameData;

    invoke-virtual {p2}, Lwa/l;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/response/ApiResponse3;

    iget-object v0, v0, Lcom/tebakgambar/model/response/ApiResponse3;->data:Ljava/lang/Object;

    check-cast v0, Lcom/tebakgambar/model/response/LoginResult;

    iget-object v0, v0, Lcom/tebakgambar/model/response/LoginResult;->gameToken:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/tebakgambar/model/GameData;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lm8/a;->f()Lm8/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lm8/a;->s(Lcom/tebakgambar/model/GameData;)V

    .line 7
    invoke-static {}, Lm8/a;->f()Lm8/a;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lm8/a;->w(Z)V

    .line 8
    invoke-static {}, Lcom/tebakgambar/model/LocalUserData;->getInstance()Lcom/tebakgambar/model/LocalUserData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/model/LocalUserData;->clearOldLoginData()V

    .line 9
    iget-object p1, p0, Lj8/x$a;->a:Lj8/x;

    invoke-virtual {p2}, Lwa/l;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/response/ApiResponse3;

    iget-object v0, v0, Lcom/tebakgambar/model/response/ApiResponse3;->data:Ljava/lang/Object;

    check-cast v0, Lcom/tebakgambar/model/response/LoginResult;

    iget-object v0, v0, Lcom/tebakgambar/model/response/LoginResult;->userData:Lcom/tebakgambar/model/UserData;

    iput-object v0, p1, Lj8/x;->z:Lcom/tebakgambar/model/UserData;

    .line 10
    iget-object p1, p0, Lj8/x$a;->a:Lj8/x;

    invoke-virtual {p1}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    iget-object v0, p0, Lj8/x$a;->a:Lj8/x;

    iget-object v0, v0, Lj8/x;->z:Lcom/tebakgambar/model/UserData;

    iget-object v0, v0, Lcom/tebakgambar/model/UserData;->tgUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->b(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lj8/x$a;->a:Lj8/x;

    iget-object p1, p1, Lj8/x;->t:Ly8/u;

    invoke-virtual {p2}, Lwa/l;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tebakgambar/model/response/ApiResponse3;

    iget-object p2, p2, Lcom/tebakgambar/model/response/ApiResponse3;->data:Ljava/lang/Object;

    check-cast p2, Lcom/tebakgambar/model/response/LoginResult;

    iget-object p2, p2, Lcom/tebakgambar/model/response/LoginResult;->customBanner:Lcom/tebakgambar/model/CustomBanner;

    invoke-virtual {p1, p2}, Ly8/u;->n(Ljava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lj8/x$a;->a:Lj8/x;

    .line 13
    invoke-virtual {p1}, Lj8/x;->b()Ljava/lang/String;

    move-result-object p1

    const-string p2, "clickLoginPopUp"

    const-string v0, "login popup"

    const-string v1, "login success"

    .line 14
    invoke-static {p2, v0, v1, p1}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lj8/x$a;->a:Lj8/x;

    invoke-virtual {p1}, Lj8/x;->B()V

    goto :goto_c2

    .line 16
    :cond_9a
    iget-object p1, p1, Lcom/tebakgambar/model/response/ApiResponse3;->header:Lcom/tebakgambar/model/response/ApiResponse3$Header;

    iget-object p1, p1, Lcom/tebakgambar/model/response/ApiResponse3$Header;->messages:[Ljava/lang/String;

    array-length p2, p1

    if-lez p2, :cond_a5

    const/4 p2, 0x0

    aget-object p1, p1, p2

    goto :goto_af

    :cond_a5
    iget-object p1, p0, Lj8/x$a;->a:Lj8/x;

    invoke-virtual {p1}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 17
    :goto_af
    iget-object p2, p0, Lj8/x$a;->a:Lj8/x;

    invoke-static {p2, p1}, Lj8/x;->n(Lj8/x;Ljava/lang/String;)V

    goto :goto_c2

    .line 18
    :cond_b5
    iget-object p1, p0, Lj8/x$a;->a:Lj8/x;

    invoke-virtual {p1}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lj8/x;->n(Lj8/x;Ljava/lang/String;)V

    :goto_c2
    return-void
.end method

.method public b(Lwa/b;Ljava/lang/Throwable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/response/LoginResult;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lj8/x$a;->a:Lj8/x;

    iget-object p1, p1, Lj8/x;->v:Landroidx/lifecycle/t;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 2
    instance-of p1, p2, Ljava/io/IOException;

    if-eqz p1, :cond_1e

    .line 3
    iget-object p1, p0, Lj8/x$a;->a:Lj8/x;

    invoke-virtual {p1}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object p2

    const v0, 0x7f12009e

    invoke-virtual {p2, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lj8/x;->n(Lj8/x;Ljava/lang/String;)V

    goto :goto_2e

    .line 4
    :cond_1e
    iget-object p1, p0, Lj8/x$a;->a:Lj8/x;

    invoke-virtual {p1}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object p2

    const v0, 0x7f12009d

    invoke-virtual {p2, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lj8/x;->n(Lj8/x;Ljava/lang/String;)V

    :goto_2e
    return-void
.end method

###### Class j8.u (j8.u)
.class public final synthetic Lj8/u;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lj8/x;


# direct methods
.method public synthetic constructor <init>(Lj8/x;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/u;->a:Lj8/x;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    iget-object v0, p0, Lj8/u;->a:Lj8/x;

    invoke-static {v0, p1}, Lj8/x;->k(Lj8/x;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

###### Class j8.v (j8.v)
.class public final synthetic Lj8/v;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lj8/x;


# direct methods
.method public synthetic constructor <init>(Lj8/x;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/v;->a:Lj8/x;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    iget-object v0, p0, Lj8/v;->a:Lj8/x;

    invoke-static {v0, p1}, Lj8/x;->m(Lj8/x;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

###### Class j8.w (j8.w)
.class public final synthetic Lj8/w;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lj8/x;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/tebakgambar/model/request/LoginRequest;


# direct methods
.method public synthetic constructor <init>(Lj8/x;Ljava/lang/String;Lcom/tebakgambar/model/request/LoginRequest;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8/w;->a:Lj8/x;

    iput-object p2, p0, Lj8/w;->b:Ljava/lang/String;

    iput-object p3, p0, Lj8/w;->c:Lcom/tebakgambar/model/request/LoginRequest;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lj8/w;->a:Lj8/x;

    iget-object v1, p0, Lj8/w;->b:Ljava/lang/String;

    iget-object v2, p0, Lj8/w;->c:Lcom/tebakgambar/model/request/LoginRequest;

    invoke-static {v0, v1, v2}, Lj8/x;->l(Lj8/x;Ljava/lang/String;Lcom/tebakgambar/model/request/LoginRequest;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
