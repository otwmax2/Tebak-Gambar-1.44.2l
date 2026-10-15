###### Class z6.c (z6.c)
.class public final Lz6/c;
.super Ljava/lang/Object;
.source "RemoteSettings.kt"

# interfaces
.implements Lz6/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz6/c$a;
    }
.end annotation


# static fields
.field private static final g:Lz6/c$a;


# instance fields
.field private final a:Lk9/g;

.field private final b:Ll6/e;

.field private final c:Lx6/b;

.field private final d:Lz6/a;

.field private final e:Lz6/g;

.field private final f:Lkotlinx/coroutines/sync/b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lz6/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz6/c$a;-><init>(Lt9/g;)V

    sput-object v0, Lz6/c;->g:Lz6/c$a;

    return-void
.end method

.method public constructor <init>(Lk9/g;Ll6/e;Lx6/b;Lz6/a;Lh0/f;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/g;",
            "Ll6/e;",
            "Lx6/b;",
            "Lz6/a;",
            "Lh0/f<",
            "Lk0/d;",
            ">;)V"
        }
    .end annotation

    const-string v0, "backgroundDispatcher"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseInstallationsApi"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appInfo"

    invoke-static {p3, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configsFetcher"

    invoke-static {p4, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataStore"

    invoke-static {p5, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lz6/c;->a:Lk9/g;

    .line 3
    iput-object p2, p0, Lz6/c;->b:Ll6/e;

    .line 4
    iput-object p3, p0, Lz6/c;->c:Lx6/b;

    .line 5
    iput-object p4, p0, Lz6/c;->d:Lz6/a;

    .line 6
    new-instance p1, Lz6/g;

    invoke-direct {p1, p5}, Lz6/g;-><init>(Lh0/f;)V

    iput-object p1, p0, Lz6/c;->e:Lz6/g;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 7
    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/sync/d;->b(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/b;

    move-result-object p1

    iput-object p1, p0, Lz6/c;->f:Lkotlinx/coroutines/sync/b;

    return-void
.end method

.method public static final synthetic e(Lz6/c;)Lz6/g;
    .registers 1

    .line 1
    iget-object p0, p0, Lz6/c;->e:Lz6/g;

    return-object p0
.end method

.method private final f(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Lba/f;

    const-string v1, "/"

    invoke-direct {v0, v1}, Lba/f;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lba/f;->b(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .registers 2

    .line 1
    iget-object v0, p0, Lz6/c;->e:Lz6/g;

    invoke-virtual {v0}, Lz6/g;->g()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public b(Lk9/d;)Ljava/lang/Object;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Lz6/c$b;

    if-eqz v2, :cond_17

    move-object v2, v0

    check-cast v2, Lz6/c$b;

    iget v3, v2, Lz6/c$b;->v:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_17

    sub-int/2addr v3, v4

    iput v3, v2, Lz6/c$b;->v:I

    goto :goto_1c

    :cond_17
    new-instance v2, Lz6/c$b;

    invoke-direct {v2, v1, v0}, Lz6/c$b;-><init>(Lz6/c;Lk9/d;)V

    :goto_1c
    iget-object v0, v2, Lz6/c$b;->t:Ljava/lang/Object;

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v3

    .line 1
    iget v4, v2, Lz6/c$b;->v:I

    const-string v5, "SessionConfigFetcher"

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_62

    if-eq v4, v8, :cond_56

    if-eq v4, v7, :cond_46

    if-ne v4, v6, :cond_3e

    iget-object v2, v2, Lz6/c$b;->r:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/b;

    :try_start_36
    invoke-static {v0}, Lh9/o;->b(Ljava/lang/Object;)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3b

    goto/16 :goto_14e

    :catchall_3b
    move-exception v0

    goto/16 :goto_154

    .line 2
    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_46
    iget-object v4, v2, Lz6/c$b;->s:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/sync/b;

    iget-object v10, v2, Lz6/c$b;->r:Ljava/lang/Object;

    check-cast v10, Lz6/c;

    :try_start_4e
    invoke-static {v0}, Lh9/o;->b(Ljava/lang/Object;)V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_52

    goto :goto_b4

    :catchall_52
    move-exception v0

    move-object v2, v4

    goto/16 :goto_154

    :cond_56
    iget-object v4, v2, Lz6/c$b;->s:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/sync/b;

    iget-object v10, v2, Lz6/c$b;->r:Ljava/lang/Object;

    check-cast v10, Lz6/c;

    invoke-static {v0}, Lh9/o;->b(Ljava/lang/Object;)V

    goto :goto_89

    :cond_62
    invoke-static {v0}, Lh9/o;->b(Ljava/lang/Object;)V

    .line 4
    iget-object v0, v1, Lz6/c;->f:Lkotlinx/coroutines/sync/b;

    invoke-interface {v0}, Lkotlinx/coroutines/sync/b;->a()Z

    move-result v0

    if-nez v0, :cond_78

    iget-object v0, v1, Lz6/c;->e:Lz6/g;

    invoke-virtual {v0}, Lz6/g;->d()Z

    move-result v0

    if-nez v0, :cond_78

    .line 5
    sget-object v0, Lh9/t;->a:Lh9/t;

    return-object v0

    .line 6
    :cond_78
    iget-object v0, v1, Lz6/c;->f:Lkotlinx/coroutines/sync/b;

    .line 7
    iput-object v1, v2, Lz6/c$b;->r:Ljava/lang/Object;

    iput-object v0, v2, Lz6/c$b;->s:Ljava/lang/Object;

    iput v8, v2, Lz6/c$b;->v:I

    invoke-interface {v0, v9, v2}, Lkotlinx/coroutines/sync/b;->c(Ljava/lang/Object;Lk9/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_87

    return-object v3

    :cond_87
    move-object v4, v0

    move-object v10, v1

    .line 8
    :goto_89
    :try_start_89
    iget-object v0, v10, Lz6/c;->e:Lz6/g;

    invoke-virtual {v0}, Lz6/g;->d()Z

    move-result v0

    if-nez v0, :cond_9c

    const-string v0, "Remote settings cache not expired. Using cached values."

    .line 9
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    sget-object v0, Lh9/t;->a:Lh9/t;
    :try_end_98
    .catchall {:try_start_89 .. :try_end_98} :catchall_52

    .line 11
    invoke-interface {v4, v9}, Lkotlinx/coroutines/sync/b;->b(Ljava/lang/Object;)V

    return-object v0

    .line 12
    :cond_9c
    :try_start_9c
    iget-object v0, v10, Lz6/c;->b:Ll6/e;

    invoke-interface {v0}, Ll6/e;->a()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    const-string v11, "firebaseInstallationsApi.id"

    invoke-static {v0, v11}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v10, v2, Lz6/c$b;->r:Ljava/lang/Object;

    iput-object v4, v2, Lz6/c$b;->s:Ljava/lang/Object;

    iput v7, v2, Lz6/c$b;->v:I

    invoke-static {v0, v2}, Lia/b;->a(Lcom/google/android/gms/tasks/Task;Lk9/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_b4

    return-object v3

    .line 13
    :cond_b4
    :goto_b4
    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_c3

    const-string v0, "Error getting Firebase Installation ID. Skipping this Session Event."

    .line 14
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    sget-object v0, Lh9/t;->a:Lh9/t;
    :try_end_bf
    .catchall {:try_start_9c .. :try_end_bf} :catchall_52

    .line 16
    invoke-interface {v4, v9}, Lkotlinx/coroutines/sync/b;->b(Ljava/lang/Object;)V

    return-object v0

    :cond_c3
    const/4 v11, 0x5

    :try_start_c4
    new-array v11, v11, [Lh9/m;

    const-string v12, "X-Crashlytics-Installation-ID"

    .line 17
    invoke-static {v12, v0}, Lh9/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh9/m;

    move-result-object v0

    const/4 v12, 0x0

    aput-object v0, v11, v12

    const-string v0, "X-Crashlytics-Device-Model"

    .line 18
    sget-object v13, Lt9/b0;->a:Lt9/b0;

    const-string v13, "%s/%s"

    new-array v14, v7, [Ljava/lang/Object;

    sget-object v15, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v15, v14, v12

    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v12, v14, v8

    invoke-static {v14, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "format(format, *args)"

    invoke-static {v12, v13}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v12}, Lz6/c;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 19
    invoke-static {v0, v12}, Lh9/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh9/m;

    move-result-object v0

    aput-object v0, v11, v8

    const-string v0, "X-Crashlytics-OS-Build-Version"

    .line 20
    sget-object v8, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v12, "INCREMENTAL"

    invoke-static {v8, v12}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v8}, Lz6/c;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lh9/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh9/m;

    move-result-object v0

    aput-object v0, v11, v7

    const-string v0, "X-Crashlytics-OS-Display-Version"

    .line 21
    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v8, "RELEASE"

    invoke-static {v7, v8}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v7}, Lz6/c;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lh9/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh9/m;

    move-result-object v0

    aput-object v0, v11, v6

    const/4 v0, 0x4

    const-string v7, "X-Crashlytics-API-Client-Version"

    .line 22
    iget-object v8, v10, Lz6/c;->c:Lx6/b;

    invoke-virtual {v8}, Lx6/b;->f()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lh9/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lh9/m;

    move-result-object v7

    aput-object v7, v11, v0

    .line 23
    invoke-static {v11}, Li9/a0;->f([Lh9/m;)Ljava/util/Map;

    move-result-object v0

    const-string v7, "Fetching settings from server."

    .line 24
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v5, v10, Lz6/c;->d:Lz6/a;

    new-instance v7, Lz6/c$c;

    invoke-direct {v7, v10, v9}, Lz6/c$c;-><init>(Lz6/c;Lk9/d;)V

    new-instance v8, Lz6/c$d;

    invoke-direct {v8, v9}, Lz6/c$d;-><init>(Lk9/d;)V

    iput-object v4, v2, Lz6/c$b;->r:Ljava/lang/Object;

    iput-object v9, v2, Lz6/c$b;->s:Ljava/lang/Object;

    iput v6, v2, Lz6/c$b;->v:I

    invoke-interface {v5, v0, v7, v8, v2}, Lz6/a;->a(Ljava/util/Map;Ls9/p;Ls9/p;Lk9/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_14a
    .catchall {:try_start_c4 .. :try_end_14a} :catchall_52

    if-ne v0, v3, :cond_14d

    return-object v3

    :cond_14d
    move-object v2, v4

    .line 26
    :goto_14e
    :try_start_14e
    sget-object v0, Lh9/t;->a:Lh9/t;
    :try_end_150
    .catchall {:try_start_14e .. :try_end_150} :catchall_3b

    .line 27
    invoke-interface {v2, v9}, Lkotlinx/coroutines/sync/b;->b(Ljava/lang/Object;)V

    return-object v0

    :goto_154
    invoke-interface {v2, v9}, Lkotlinx/coroutines/sync/b;->b(Ljava/lang/Object;)V

    throw v0
.end method

.method public c()Lca/a;
    .registers 3

    .line 1
    iget-object v0, p0, Lz6/c;->e:Lz6/g;

    invoke-virtual {v0}, Lz6/g;->e()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_19

    sget-object v1, Lca/a;->p:Lca/a$a;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lca/d;->s:Lca/d;

    invoke-static {v0, v1}, Lca/c;->h(ILca/d;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lca/a;->e(J)Lca/a;

    move-result-object v0

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return-object v0
.end method

.method public d()Ljava/lang/Double;
    .registers 2

    .line 1
    iget-object v0, p0, Lz6/c;->e:Lz6/g;

    invoke-virtual {v0}, Lz6/g;->f()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

###### Class z6.c.a (z6.c$a)
.class final Lz6/c$a;
.super Ljava/lang/Object;
.source "RemoteSettings.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz6/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt9/g;)V
    .registers 2

    invoke-direct {p0}, Lz6/c$a;-><init>()V

    return-void
.end method

###### Class z6.c.b (z6.c$b)
.class final Lz6/c$b;
.super Lm9/d;
.source "RemoteSettings.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz6/c;->b(Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lm9/f;
    c = "com.google.firebase.sessions.settings.RemoteSettings"
    f = "RemoteSettings.kt"
    l = {
        0xaa,
        0x4c,
        0x5e
    }
    m = "updateSettings"
.end annotation


# instance fields
.field r:Ljava/lang/Object;

.field s:Ljava/lang/Object;

.field synthetic t:Ljava/lang/Object;

.field final synthetic u:Lz6/c;

.field v:I


# direct methods
.method constructor <init>(Lz6/c;Lk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz6/c;",
            "Lk9/d<",
            "-",
            "Lz6/c$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lz6/c$b;->u:Lz6/c;

    invoke-direct {p0, p2}, Lm9/d;-><init>(Lk9/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lz6/c$b;->t:Ljava/lang/Object;

    iget p1, p0, Lz6/c$b;->v:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lz6/c$b;->v:I

    iget-object p1, p0, Lz6/c$b;->u:Lz6/c;

    invoke-virtual {p1, p0}, Lz6/c;->b(Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class z6.c.C0309c (z6.c$c)
.class final Lz6/c$c;
.super Lm9/k;
.source "RemoteSettings.kt"

# interfaces
.implements Ls9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz6/c;->b(Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm9/k;",
        "Ls9/p<",
        "Lorg/json/JSONObject;",
        "Lk9/d<",
        "-",
        "Lh9/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lm9/f;
    c = "com.google.firebase.sessions.settings.RemoteSettings$updateSettings$2$1"
    f = "RemoteSettings.kt"
    l = {
        0x7d,
        0x80,
        0x83,
        0x85,
        0x86,
        0x88
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field s:Ljava/lang/Object;

.field t:Ljava/lang/Object;

.field u:I

.field synthetic v:Ljava/lang/Object;

.field final synthetic w:Lz6/c;


# direct methods
.method constructor <init>(Lz6/c;Lk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz6/c;",
            "Lk9/d<",
            "-",
            "Lz6/c$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lz6/c$c;->w:Lz6/c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lm9/k;-><init>(ILk9/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Lk9/d;)Lk9/d;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lk9/d<",
            "*>;)",
            "Lk9/d<",
            "Lh9/t;",
            ">;"
        }
    .end annotation

    new-instance v0, Lz6/c$c;

    iget-object v1, p0, Lz6/c$c;->w:Lz6/c;

    invoke-direct {v0, v1, p2}, Lz6/c$c;-><init>(Lz6/c;Lk9/d;)V

    iput-object p1, v0, Lz6/c$c;->v:Ljava/lang/Object;

    return-object v0
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    const-string v0, "cache_duration"

    const-string v1, "session_timeout_seconds"

    const-string v2, "sampling_rate"

    const-string v3, "sessions_enabled"

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v4

    .line 1
    iget v5, p0, Lz6/c$c;->u:I

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_1a4

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_1a
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    goto/16 :goto_1a0

    :pswitch_1f
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    goto/16 :goto_182

    :pswitch_24
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    goto/16 :goto_15f

    :pswitch_29
    iget-object v0, p0, Lz6/c$c;->v:Ljava/lang/Object;

    check-cast v0, Lt9/y;

    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    goto/16 :goto_13c

    :pswitch_32
    iget-object v0, p0, Lz6/c$c;->s:Ljava/lang/Object;

    check-cast v0, Lt9/y;

    iget-object v1, p0, Lz6/c$c;->v:Ljava/lang/Object;

    check-cast v1, Lt9/y;

    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    goto/16 :goto_119

    :pswitch_3f
    iget-object v0, p0, Lz6/c$c;->t:Ljava/lang/Object;

    check-cast v0, Lt9/y;

    iget-object v1, p0, Lz6/c$c;->s:Ljava/lang/Object;

    check-cast v1, Lt9/y;

    iget-object v2, p0, Lz6/c$c;->v:Ljava/lang/Object;

    check-cast v2, Lt9/y;

    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    goto/16 :goto_f1

    :pswitch_50
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lz6/c$c;->v:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    .line 4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fetched settings: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "SessionConfigFetcher"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    new-instance v5, Lt9/y;

    invoke-direct {v5}, Lt9/y;-><init>()V

    .line 6
    new-instance v8, Lt9/y;

    invoke-direct {v8}, Lt9/y;-><init>()V

    .line 7
    new-instance v9, Lt9/y;

    invoke-direct {v9}, Lt9/y;-><init>()V

    const-string v10, "app_quality"

    .line 8
    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d2

    .line 9
    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v10, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {p1, v10}, Lt9/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/json/JSONObject;

    .line 10
    :try_start_8f
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9c

    .line 11
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;
    :try_end_9b
    .catch Lorg/json/JSONException; {:try_start_8f .. :try_end_9b} :catch_ca

    goto :goto_9d

    :cond_9c
    move-object v3, v6

    .line 12
    :goto_9d
    :try_start_9d
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_ab

    .line 13
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    iput-object v2, v5, Lt9/y;->o:Ljava/lang/Object;

    .line 14
    :cond_ab
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 15
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v8, Lt9/y;->o:Ljava/lang/Object;

    .line 16
    :cond_b9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 17
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, v9, Lt9/y;->o:Ljava/lang/Object;
    :try_end_c7
    .catch Lorg/json/JSONException; {:try_start_9d .. :try_end_c7} :catch_c8

    goto :goto_d3

    :catch_c8
    move-exception p1

    goto :goto_cc

    :catch_ca
    move-exception p1

    move-object v3, v6

    :goto_cc
    const-string v0, "Error parsing the configs remotely fetched: "

    .line 18
    invoke-static {v7, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d3

    :cond_d2
    move-object v3, v6

    :cond_d3
    :goto_d3
    if-eqz v3, :cond_f4

    .line 19
    iget-object p1, p0, Lz6/c$c;->w:Lz6/c;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {p1}, Lz6/c;->e(Lz6/c;)Lz6/g;

    move-result-object p1

    iput-object v5, p0, Lz6/c$c;->v:Ljava/lang/Object;

    iput-object v8, p0, Lz6/c$c;->s:Ljava/lang/Object;

    iput-object v9, p0, Lz6/c$c;->t:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lz6/c$c;->u:I

    invoke-virtual {p1, v3, p0}, Lz6/g;->n(Ljava/lang/Boolean;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v4, :cond_ee

    return-object v4

    :cond_ee
    move-object v2, v5

    move-object v1, v8

    move-object v0, v9

    :goto_f1
    move-object v8, v1

    move-object v1, v2

    goto :goto_f6

    :cond_f4
    move-object v1, v5

    move-object v0, v9

    .line 20
    :goto_f6
    iget-object p1, v8, Lt9/y;->o:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_119

    iget-object v2, p0, Lz6/c$c;->w:Lz6/c;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 21
    invoke-static {v2}, Lz6/c;->e(Lz6/c;)Lz6/g;

    move-result-object p1

    iget-object v2, v8, Lt9/y;->o:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    iput-object v1, p0, Lz6/c$c;->v:Ljava/lang/Object;

    iput-object v0, p0, Lz6/c$c;->s:Ljava/lang/Object;

    iput-object v6, p0, Lz6/c$c;->t:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, p0, Lz6/c$c;->u:I

    invoke-virtual {p1, v2, p0}, Lz6/g;->m(Ljava/lang/Integer;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v4, :cond_119

    return-object v4

    .line 22
    :cond_119
    :goto_119
    iget-object p1, v1, Lt9/y;->o:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Double;

    if-eqz p1, :cond_13c

    iget-object v2, p0, Lz6/c$c;->w:Lz6/c;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    invoke-static {v2}, Lz6/c;->e(Lz6/c;)Lz6/g;

    move-result-object p1

    iget-object v1, v1, Lt9/y;->o:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Double;

    iput-object v0, p0, Lz6/c$c;->v:Ljava/lang/Object;

    iput-object v6, p0, Lz6/c$c;->s:Ljava/lang/Object;

    iput-object v6, p0, Lz6/c$c;->t:Ljava/lang/Object;

    const/4 v2, 0x3

    iput v2, p0, Lz6/c$c;->u:I

    invoke-virtual {p1, v1, p0}, Lz6/g;->i(Ljava/lang/Double;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v4, :cond_13c

    return-object v4

    .line 23
    :cond_13c
    :goto_13c
    iget-object p1, v0, Lt9/y;->o:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_162

    iget-object v1, p0, Lz6/c$c;->w:Lz6/c;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    invoke-static {v1}, Lz6/c;->e(Lz6/c;)Lz6/g;

    move-result-object p1

    iget-object v0, v0, Lt9/y;->o:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iput-object v6, p0, Lz6/c$c;->v:Ljava/lang/Object;

    iput-object v6, p0, Lz6/c$c;->s:Ljava/lang/Object;

    iput-object v6, p0, Lz6/c$c;->t:Ljava/lang/Object;

    const/4 v1, 0x4

    iput v1, p0, Lz6/c$c;->u:I

    invoke-virtual {p1, v0, p0}, Lz6/g;->j(Ljava/lang/Integer;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v4, :cond_15f

    return-object v4

    :cond_15f
    :goto_15f
    sget-object p1, Lh9/t;->a:Lh9/t;

    goto :goto_163

    :cond_162
    move-object p1, v6

    :goto_163
    if-nez p1, :cond_182

    .line 24
    iget-object p1, p0, Lz6/c$c;->w:Lz6/c;

    invoke-static {p1}, Lz6/c;->e(Lz6/c;)Lz6/g;

    move-result-object p1

    const v0, 0x15180

    invoke-static {v0}, Lm9/b;->b(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v6, p0, Lz6/c$c;->v:Ljava/lang/Object;

    iput-object v6, p0, Lz6/c$c;->s:Ljava/lang/Object;

    iput-object v6, p0, Lz6/c$c;->t:Ljava/lang/Object;

    const/4 v1, 0x5

    iput v1, p0, Lz6/c$c;->u:I

    invoke-virtual {p1, v0, p0}, Lz6/g;->j(Ljava/lang/Integer;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v4, :cond_182

    return-object v4

    .line 25
    :cond_182
    :goto_182
    iget-object p1, p0, Lz6/c$c;->w:Lz6/c;

    invoke-static {p1}, Lz6/c;->e(Lz6/c;)Lz6/g;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lm9/b;->c(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v6, p0, Lz6/c$c;->v:Ljava/lang/Object;

    iput-object v6, p0, Lz6/c$c;->s:Ljava/lang/Object;

    iput-object v6, p0, Lz6/c$c;->t:Ljava/lang/Object;

    const/4 v1, 0x6

    iput v1, p0, Lz6/c$c;->u:I

    invoke-virtual {p1, v0, p0}, Lz6/g;->k(Ljava/lang/Long;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v4, :cond_1a0

    return-object v4

    .line 26
    :cond_1a0
    :goto_1a0
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1

    nop

    :pswitch_data_1a4
    .packed-switch 0x0
        :pswitch_50
        :pswitch_3f
        :pswitch_32
        :pswitch_29
        :pswitch_24
        :pswitch_1f
        :pswitch_1a
    .end packed-switch
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lorg/json/JSONObject;

    check-cast p2, Lk9/d;

    invoke-virtual {p0, p1, p2}, Lz6/c$c;->l(Lorg/json/JSONObject;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lorg/json/JSONObject;Lk9/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lz6/c$c;->d(Ljava/lang/Object;Lk9/d;)Lk9/d;

    move-result-object p1

    check-cast p1, Lz6/c$c;

    sget-object p2, Lh9/t;->a:Lh9/t;

    invoke-virtual {p1, p2}, Lz6/c$c;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class z6.c.d (z6.c$d)
.class final Lz6/c$d;
.super Lm9/k;
.source "RemoteSettings.kt"

# interfaces
.implements Ls9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz6/c;->b(Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm9/k;",
        "Ls9/p<",
        "Ljava/lang/String;",
        "Lk9/d<",
        "-",
        "Lh9/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lm9/f;
    c = "com.google.firebase.sessions.settings.RemoteSettings$updateSettings$2$2"
    f = "RemoteSettings.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field s:I

.field synthetic t:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/d<",
            "-",
            "Lz6/c$d;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lm9/k;-><init>(ILk9/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Lk9/d;)Lk9/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lk9/d<",
            "*>;)",
            "Lk9/d<",
            "Lh9/t;",
            ">;"
        }
    .end annotation

    new-instance v0, Lz6/c$d;

    invoke-direct {v0, p2}, Lz6/c$d;-><init>(Lk9/d;)V

    iput-object p1, v0, Lz6/c$d;->t:Ljava/lang/Object;

    return-object v0
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lz6/c$d;->s:I

    if-nez v0, :cond_27

    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lz6/c$d;->t:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error failing to fetch the remote configs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SessionConfigFetcher"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1

    :cond_27
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lk9/d;

    invoke-virtual {p0, p1, p2}, Lz6/c$d;->l(Ljava/lang/String;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ljava/lang/String;Lk9/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lz6/c$d;->d(Ljava/lang/Object;Lk9/d;)Lk9/d;

    move-result-object p1

    check-cast p1, Lz6/c$d;

    sget-object p2, Lh9/t;->a:Lh9/t;

    invoke-virtual {p1, p2}, Lz6/c$d;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
