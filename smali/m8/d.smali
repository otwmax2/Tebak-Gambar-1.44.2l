###### Class m8.d (m8.d)
.class public Lm8/d;
.super Landroid/os/Handler;
.source "GameSaverHandler.java"


# instance fields
.field private a:I


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lm8/d;->a:I

    return-void
.end method

.method public static synthetic a(Lm8/d;Lcom/tebakgambar/model/GameData;Lg5/u;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lm8/d;->j(Lcom/tebakgambar/model/GameData;Lg5/u;)V

    return-void
.end method

.method public static synthetic b(Lm8/d;Ljava/util/Map;Lcom/tebakgambar/model/request/UpdateGameDataRequest;Lcom/tebakgambar/model/GameData;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lm8/d;->i(Ljava/util/Map;Lcom/tebakgambar/model/request/UpdateGameDataRequest;Lcom/tebakgambar/model/GameData;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lm8/d;)I
    .registers 1

    .line 1
    iget p0, p0, Lm8/d;->a:I

    return p0
.end method

.method static synthetic d(Lm8/d;I)I
    .registers 2

    .line 1
    iput p1, p0, Lm8/d;->a:I

    return p1
.end method

.method static synthetic e(Lm8/d;)I
    .registers 3

    .line 1
    iget v0, p0, Lm8/d;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lm8/d;->a:I

    return v0
.end method

.method static synthetic f(Lm8/d;Lcom/tebakgambar/model/GameData;)Landroid/os/Message;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lm8/d;->g(Lcom/tebakgambar/model/GameData;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method private g(Lcom/tebakgambar/model/GameData;)Landroid/os/Message;
    .registers 4

    .line 1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x5

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private synthetic i(Ljava/util/Map;Lcom/tebakgambar/model/request/UpdateGameDataRequest;Lcom/tebakgambar/model/GameData;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tebakgambar/network/TebakGambarApi;->b()Lcom/tebakgambar/network/TebakGambarApi$Interface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tebakgambar/network/TebakGambarApi$Interface;->updateGameData(Ljava/util/Map;Lcom/tebakgambar/model/request/UpdateGameDataRequest;)Lwa/b;

    move-result-object p1

    .line 2
    new-instance p2, Lm8/d$a;

    invoke-direct {p2, p0, p3}, Lm8/d$a;-><init>(Lm8/d;Lcom/tebakgambar/model/GameData;)V

    invoke-interface {p1, p2}, Lwa/b;->v3(Lwa/d;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic j(Lcom/tebakgambar/model/GameData;Lg5/u;)V
    .registers 5

    .line 1
    invoke-virtual {p2}, Lg5/u;->c()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {p2}, Lcom/tebakgambar/model/RequestHeader;->create(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    .line 3
    new-instance v0, Lcom/tebakgambar/model/request/UpdateGameDataRequest;

    invoke-direct {v0}, Lcom/tebakgambar/model/request/UpdateGameDataRequest;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/tebakgambar/model/GameData;->toGameToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tebakgambar/model/request/UpdateGameDataRequest;->gameToken:Ljava/lang/String;

    .line 5
    new-instance v1, Lm8/c;

    invoke-direct {v1, p0, p2, v0, p1}, Lm8/c;-><init>(Lm8/d;Ljava/util/Map;Lcom/tebakgambar/model/request/UpdateGameDataRequest;Lcom/tebakgambar/model/GameData;)V

    invoke-static {v1}, Lt1/h;->d(Ljava/util/concurrent/Callable;)Lt1/h;

    return-void
.end method

.method private k(Lcom/tebakgambar/model/GameData;)V
    .registers 4

    .line 1
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object v0

    invoke-static {v0}, Ly8/y;->q(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1f

    .line 2
    iget v0, p0, Lm8/d;->a:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1e

    .line 3
    invoke-direct {p0, p1}, Lm8/d;->g(Lcom/tebakgambar/model/GameData;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4
    iget p1, p0, Lm8/d;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lm8/d;->a:I

    :cond_1e
    return-void

    .line 5
    :cond_1f
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lg5/s;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2d

    .line 6
    iput v1, p0, Lm8/d;->a:I

    return-void

    .line 7
    :cond_2d
    invoke-virtual {v0, v1}, Lg5/s;->W3(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lm8/b;

    invoke-direct {v1, p0, p1}, Lm8/b;-><init>(Lm8/d;Lcom/tebakgambar/model/GameData;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->i(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method h(Lcom/tebakgambar/model/GameData;)V
    .registers 3

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    invoke-direct {p0, p1}, Lm8/d;->g(Lcom/tebakgambar/model/GameData;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/tebakgambar/model/GameData;

    invoke-direct {p0, p1}, Lm8/d;->k(Lcom/tebakgambar/model/GameData;)V

    return-void
.end method

###### Class m8.d.a (m8.d$a)
.class Lm8/d$a;
.super Ljava/lang/Object;
.source "GameSaverHandler.java"

# interfaces
.implements Lwa/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm8/d;->i(Ljava/util/Map;Lcom/tebakgambar/model/request/UpdateGameDataRequest;Lcom/tebakgambar/model/GameData;)Ljava/lang/Object;
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
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/model/GameData;

.field final synthetic b:Lm8/d;


# direct methods
.method constructor <init>(Lm8/d;Lcom/tebakgambar/model/GameData;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lm8/d$a;->b:Lm8/d;

    iput-object p2, p0, Lm8/d$a;->a:Lcom/tebakgambar/model/GameData;

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
            "Ljava/lang/Object;",
            ">;>;",
            "Lwa/l<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lm8/d$a;->b:Lm8/d;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lm8/d;->d(Lm8/d;I)I

    return-void
.end method

.method public b(Lwa/b;Ljava/lang/Throwable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lm8/d$a;->b:Lm8/d;

    invoke-static {p1}, Lm8/d;->c(Lm8/d;)I

    move-result p1

    const/4 p2, 0x5

    if-ge p1, p2, :cond_1b

    .line 2
    iget-object p1, p0, Lm8/d$a;->b:Lm8/d;

    iget-object p2, p0, Lm8/d$a;->a:Lcom/tebakgambar/model/GameData;

    invoke-static {p1, p2}, Lm8/d;->f(Lm8/d;Lcom/tebakgambar/model/GameData;)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3
    iget-object p1, p0, Lm8/d$a;->b:Lm8/d;

    invoke-static {p1}, Lm8/d;->e(Lm8/d;)I

    :cond_1b
    return-void
.end method

###### Class m8.b (m8.b)
.class public final synthetic Lm8/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic a:Lm8/d;

.field public final synthetic b:Lcom/tebakgambar/model/GameData;


# direct methods
.method public synthetic constructor <init>(Lm8/d;Lcom/tebakgambar/model/GameData;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm8/b;->a:Lm8/d;

    iput-object p2, p0, Lm8/b;->b:Lcom/tebakgambar/model/GameData;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lm8/b;->a:Lm8/d;

    iget-object v1, p0, Lm8/b;->b:Lcom/tebakgambar/model/GameData;

    check-cast p1, Lg5/u;

    invoke-static {v0, v1, p1}, Lm8/d;->a(Lm8/d;Lcom/tebakgambar/model/GameData;Lg5/u;)V

    return-void
.end method

###### Class m8.c (m8.c)
.class public final synthetic Lm8/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lm8/d;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Lcom/tebakgambar/model/request/UpdateGameDataRequest;

.field public final synthetic d:Lcom/tebakgambar/model/GameData;


# direct methods
.method public synthetic constructor <init>(Lm8/d;Ljava/util/Map;Lcom/tebakgambar/model/request/UpdateGameDataRequest;Lcom/tebakgambar/model/GameData;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm8/c;->a:Lm8/d;

    iput-object p2, p0, Lm8/c;->b:Ljava/util/Map;

    iput-object p3, p0, Lm8/c;->c:Lcom/tebakgambar/model/request/UpdateGameDataRequest;

    iput-object p4, p0, Lm8/c;->d:Lcom/tebakgambar/model/GameData;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lm8/c;->a:Lm8/d;

    iget-object v1, p0, Lm8/c;->b:Ljava/util/Map;

    iget-object v2, p0, Lm8/c;->c:Lcom/tebakgambar/model/request/UpdateGameDataRequest;

    iget-object v3, p0, Lm8/c;->d:Lcom/tebakgambar/model/GameData;

    invoke-static {v0, v1, v2, v3}, Lm8/d;->b(Lm8/d;Ljava/util/Map;Lcom/tebakgambar/model/request/UpdateGameDataRequest;Lcom/tebakgambar/model/GameData;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
