###### Class com.google.firebase.sessions.FirebaseSessionsRegistrar (com.google.firebase.sessions.FirebaseSessionsRegistrar)
.class public final Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;
.super Ljava/lang/Object;
.source "FirebaseSessionsRegistrar.kt"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$a;
    }
.end annotation


# static fields
.field private static final Companion:Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$a;

.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-sessions"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final backgroundDispatcher:Lk5/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk5/f0<",
            "Lda/i0;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blockingDispatcher:Lk5/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk5/f0<",
            "Lda/i0;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final firebaseApp:Lk5/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk5/f0<",
            "Lb5/g;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final firebaseInstallationsApi:Lk5/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk5/f0<",
            "Ll6/e;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final sessionFirelogPublisher:Lk5/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk5/f0<",
            "Lx6/c0;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final sessionGenerator:Lk5/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk5/f0<",
            "Lx6/e0;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final sessionsSettings:Lk5/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk5/f0<",
            "Lz6/f;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final transportFactory:Lk5/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk5/f0<",
            "Lj3/g;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Lda/i0;

    new-instance v1, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$a;-><init>(Lt9/g;)V

    sput-object v1, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->Companion:Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$a;

    .line 1
    const-class v1, Lb5/g;

    invoke-static {v1}, Lk5/f0;->b(Ljava/lang/Class;)Lk5/f0;

    move-result-object v1

    sput-object v1, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lk5/f0;

    .line 2
    const-class v1, Ll6/e;

    invoke-static {v1}, Lk5/f0;->b(Ljava/lang/Class;)Lk5/f0;

    move-result-object v1

    sput-object v1, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Lk5/f0;

    .line 3
    const-class v1, Lf5/a;

    invoke-static {v1, v0}, Lk5/f0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk5/f0;

    move-result-object v1

    sput-object v1, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Lk5/f0;

    .line 4
    const-class v1, Lf5/b;

    invoke-static {v1, v0}, Lk5/f0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lk5/f0;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->blockingDispatcher:Lk5/f0;

    .line 5
    const-class v0, Lj3/g;

    invoke-static {v0}, Lk5/f0;->b(Ljava/lang/Class;)Lk5/f0;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->transportFactory:Lk5/f0;

    .line 6
    const-class v0, Lx6/c0;

    invoke-static {v0}, Lk5/f0;->b(Ljava/lang/Class;)Lk5/f0;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->sessionFirelogPublisher:Lk5/f0;

    .line 7
    const-class v0, Lx6/e0;

    invoke-static {v0}, Lk5/f0;->b(Ljava/lang/Class;)Lk5/f0;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->sessionGenerator:Lk5/f0;

    .line 8
    const-class v0, Lz6/f;

    invoke-static {v0}, Lk5/f0;->b(Ljava/lang/Class;)Lk5/f0;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->sessionsSettings:Lk5/f0;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lk5/e;)Lx6/h0;
    .registers 1

    invoke-static {p0}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->getComponents$lambda-5(Lk5/e;)Lx6/h0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lk5/e;)Lx6/e0;
    .registers 1

    invoke-static {p0}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->getComponents$lambda-1(Lk5/e;)Lx6/e0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lk5/e;)Lx6/x;
    .registers 1

    invoke-static {p0}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->getComponents$lambda-4(Lk5/e;)Lx6/x;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lk5/e;)Lx6/c0;
    .registers 1

    invoke-static {p0}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->getComponents$lambda-2(Lk5/e;)Lx6/c0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lk5/e;)Lx6/l;
    .registers 1

    invoke-static {p0}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->getComponents$lambda-0(Lk5/e;)Lx6/l;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lk5/e;)Lz6/f;
    .registers 1

    invoke-static {p0}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->getComponents$lambda-3(Lk5/e;)Lz6/f;

    move-result-object p0

    return-object p0
.end method

.method private static final getComponents$lambda-0(Lk5/e;)Lx6/l;
    .registers 5

    .line 1
    new-instance v0, Lx6/l;

    .line 2
    sget-object v1, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lk5/f0;

    invoke-interface {p0, v1}, Lk5/e;->e(Lk5/f0;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "container[firebaseApp]"

    invoke-static {v1, v2}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lb5/g;

    .line 3
    sget-object v2, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->sessionsSettings:Lk5/f0;

    invoke-interface {p0, v2}, Lk5/e;->e(Lk5/f0;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "container[sessionsSettings]"

    invoke-static {v2, v3}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lz6/f;

    .line 4
    sget-object v3, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Lk5/f0;

    invoke-interface {p0, v3}, Lk5/e;->e(Lk5/f0;)Ljava/lang/Object;

    move-result-object p0

    const-string v3, "container[backgroundDispatcher]"

    invoke-static {p0, v3}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lk9/g;

    .line 5
    invoke-direct {v0, v1, v2, p0}, Lx6/l;-><init>(Lb5/g;Lz6/f;Lk9/g;)V

    return-object v0
.end method

.method private static final getComponents$lambda-1(Lk5/e;)Lx6/e0;
    .registers 4

    .line 1
    new-instance p0, Lx6/e0;

    sget-object v0, Lx6/l0;->a:Lx6/l0;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lx6/e0;-><init>(Lx6/k0;Ls9/a;ILt9/g;)V

    return-object p0
.end method

.method private static final getComponents$lambda-2(Lk5/e;)Lx6/c0;
    .registers 8

    .line 1
    new-instance v6, Lx6/d0;

    .line 2
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lk5/f0;

    invoke-interface {p0, v0}, Lk5/e;->e(Lk5/f0;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "container[firebaseApp]"

    invoke-static {v0, v1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Lb5/g;

    .line 3
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Lk5/f0;

    invoke-interface {p0, v0}, Lk5/e;->e(Lk5/f0;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "container[firebaseInstallationsApi]"

    invoke-static {v0, v2}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Ll6/e;

    .line 4
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->sessionsSettings:Lk5/f0;

    invoke-interface {p0, v0}, Lk5/e;->e(Lk5/f0;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "container[sessionsSettings]"

    invoke-static {v0, v3}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Lz6/f;

    .line 5
    new-instance v4, Lx6/h;

    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->transportFactory:Lk5/f0;

    invoke-interface {p0, v0}, Lk5/e;->b(Lk5/f0;)Lk6/b;

    move-result-object v0

    const-string v5, "container.getProvider(transportFactory)"

    invoke-static {v0, v5}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v0}, Lx6/h;-><init>(Lk6/b;)V

    .line 6
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Lk5/f0;

    invoke-interface {p0, v0}, Lk5/e;->e(Lk5/f0;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "container[backgroundDispatcher]"

    invoke-static {p0, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p0

    check-cast v5, Lk9/g;

    move-object v0, v6

    .line 7
    invoke-direct/range {v0 .. v5}, Lx6/d0;-><init>(Lb5/g;Ll6/e;Lz6/f;Lx6/i;Lk9/g;)V

    return-object v6
.end method

.method private static final getComponents$lambda-3(Lk5/e;)Lz6/f;
    .registers 6

    .line 1
    new-instance v0, Lz6/f;

    .line 2
    sget-object v1, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lk5/f0;

    invoke-interface {p0, v1}, Lk5/e;->e(Lk5/f0;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "container[firebaseApp]"

    invoke-static {v1, v2}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lb5/g;

    .line 3
    sget-object v2, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->blockingDispatcher:Lk5/f0;

    invoke-interface {p0, v2}, Lk5/e;->e(Lk5/f0;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "container[blockingDispatcher]"

    invoke-static {v2, v3}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lk9/g;

    .line 4
    sget-object v3, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Lk5/f0;

    invoke-interface {p0, v3}, Lk5/e;->e(Lk5/f0;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "container[backgroundDispatcher]"

    invoke-static {v3, v4}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lk9/g;

    .line 5
    sget-object v4, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Lk5/f0;

    invoke-interface {p0, v4}, Lk5/e;->e(Lk5/f0;)Ljava/lang/Object;

    move-result-object p0

    const-string v4, "container[firebaseInstallationsApi]"

    invoke-static {p0, v4}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ll6/e;

    .line 6
    invoke-direct {v0, v1, v2, v3, p0}, Lz6/f;-><init>(Lb5/g;Lk9/g;Lk9/g;Ll6/e;)V

    return-object v0
.end method

.method private static final getComponents$lambda-4(Lk5/e;)Lx6/x;
    .registers 4

    .line 1
    new-instance v0, Lx6/y;

    .line 2
    sget-object v1, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lk5/f0;

    invoke-interface {p0, v1}, Lk5/e;->e(Lk5/f0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb5/g;

    invoke-virtual {v1}, Lb5/g;->l()Landroid/content/Context;

    move-result-object v1

    const-string v2, "container[firebaseApp].applicationContext"

    invoke-static {v1, v2}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v2, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Lk5/f0;

    invoke-interface {p0, v2}, Lk5/e;->e(Lk5/f0;)Ljava/lang/Object;

    move-result-object p0

    const-string v2, "container[backgroundDispatcher]"

    invoke-static {p0, v2}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lk9/g;

    .line 4
    invoke-direct {v0, v1, p0}, Lx6/y;-><init>(Landroid/content/Context;Lk9/g;)V

    return-object v0
.end method

.method private static final getComponents$lambda-5(Lk5/e;)Lx6/h0;
    .registers 3

    .line 1
    new-instance v0, Lx6/i0;

    sget-object v1, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lk5/f0;

    invoke-interface {p0, v1}, Lk5/e;->e(Lk5/f0;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "container[firebaseApp]"

    invoke-static {p0, v1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lb5/g;

    invoke-direct {v0, p0}, Lx6/i0;-><init>(Lb5/g;)V

    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk5/c<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x7

    new-array v0, v0, [Lk5/c;

    .line 1
    const-class v1, Lx6/l;

    invoke-static {v1}, Lk5/c;->c(Ljava/lang/Class;)Lk5/c$b;

    move-result-object v1

    const-string v2, "fire-sessions"

    .line 2
    invoke-virtual {v1, v2}, Lk5/c$b;->h(Ljava/lang/String;)Lk5/c$b;

    move-result-object v1

    .line 3
    sget-object v3, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseApp:Lk5/f0;

    invoke-static {v3}, Lk5/r;->k(Lk5/f0;)Lk5/r;

    move-result-object v4

    invoke-virtual {v1, v4}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    .line 4
    sget-object v4, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->sessionsSettings:Lk5/f0;

    invoke-static {v4}, Lk5/r;->k(Lk5/f0;)Lk5/r;

    move-result-object v5

    invoke-virtual {v1, v5}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    .line 5
    sget-object v5, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->backgroundDispatcher:Lk5/f0;

    invoke-static {v5}, Lk5/r;->k(Lk5/f0;)Lk5/r;

    move-result-object v6

    invoke-virtual {v1, v6}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    sget-object v6, Lx6/r;->a:Lx6/r;

    .line 6
    invoke-virtual {v1, v6}, Lk5/c$b;->f(Lk5/h;)Lk5/c$b;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lk5/c$b;->e()Lk5/c$b;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lk5/c$b;->d()Lk5/c;

    move-result-object v1

    const/4 v6, 0x0

    aput-object v1, v0, v6

    .line 9
    const-class v1, Lx6/e0;

    .line 10
    invoke-static {v1}, Lk5/c;->c(Ljava/lang/Class;)Lk5/c$b;

    move-result-object v1

    const-string v6, "session-generator"

    .line 11
    invoke-virtual {v1, v6}, Lk5/c$b;->h(Ljava/lang/String;)Lk5/c$b;

    move-result-object v1

    sget-object v6, Lx6/o;->a:Lx6/o;

    .line 12
    invoke-virtual {v1, v6}, Lk5/c$b;->f(Lk5/h;)Lk5/c$b;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lk5/c$b;->d()Lk5/c;

    move-result-object v1

    const/4 v6, 0x1

    aput-object v1, v0, v6

    .line 14
    const-class v1, Lx6/c0;

    .line 15
    invoke-static {v1}, Lk5/c;->c(Ljava/lang/Class;)Lk5/c$b;

    move-result-object v1

    const-string v6, "session-publisher"

    .line 16
    invoke-virtual {v1, v6}, Lk5/c$b;->h(Ljava/lang/String;)Lk5/c$b;

    move-result-object v1

    .line 17
    invoke-static {v3}, Lk5/r;->k(Lk5/f0;)Lk5/r;

    move-result-object v6

    invoke-virtual {v1, v6}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    .line 18
    sget-object v6, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->firebaseInstallationsApi:Lk5/f0;

    invoke-static {v6}, Lk5/r;->k(Lk5/f0;)Lk5/r;

    move-result-object v7

    invoke-virtual {v1, v7}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    .line 19
    invoke-static {v4}, Lk5/r;->k(Lk5/f0;)Lk5/r;

    move-result-object v4

    invoke-virtual {v1, v4}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    .line 20
    sget-object v4, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->transportFactory:Lk5/f0;

    invoke-static {v4}, Lk5/r;->m(Lk5/f0;)Lk5/r;

    move-result-object v4

    invoke-virtual {v1, v4}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    .line 21
    invoke-static {v5}, Lk5/r;->k(Lk5/f0;)Lk5/r;

    move-result-object v4

    invoke-virtual {v1, v4}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    sget-object v4, Lx6/q;->a:Lx6/q;

    .line 22
    invoke-virtual {v1, v4}, Lk5/c$b;->f(Lk5/h;)Lk5/c$b;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lk5/c$b;->d()Lk5/c;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 24
    const-class v1, Lz6/f;

    .line 25
    invoke-static {v1}, Lk5/c;->c(Ljava/lang/Class;)Lk5/c$b;

    move-result-object v1

    const-string v4, "sessions-settings"

    .line 26
    invoke-virtual {v1, v4}, Lk5/c$b;->h(Ljava/lang/String;)Lk5/c$b;

    move-result-object v1

    .line 27
    invoke-static {v3}, Lk5/r;->k(Lk5/f0;)Lk5/r;

    move-result-object v4

    invoke-virtual {v1, v4}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    .line 28
    sget-object v4, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->blockingDispatcher:Lk5/f0;

    invoke-static {v4}, Lk5/r;->k(Lk5/f0;)Lk5/r;

    move-result-object v4

    invoke-virtual {v1, v4}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    .line 29
    invoke-static {v5}, Lk5/r;->k(Lk5/f0;)Lk5/r;

    move-result-object v4

    invoke-virtual {v1, v4}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    .line 30
    invoke-static {v6}, Lk5/r;->k(Lk5/f0;)Lk5/r;

    move-result-object v4

    invoke-virtual {v1, v4}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    sget-object v4, Lx6/s;->a:Lx6/s;

    .line 31
    invoke-virtual {v1, v4}, Lk5/c$b;->f(Lk5/h;)Lk5/c$b;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lk5/c$b;->d()Lk5/c;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    .line 33
    const-class v1, Lx6/x;

    .line 34
    invoke-static {v1}, Lk5/c;->c(Ljava/lang/Class;)Lk5/c$b;

    move-result-object v1

    const-string v4, "sessions-datastore"

    .line 35
    invoke-virtual {v1, v4}, Lk5/c$b;->h(Ljava/lang/String;)Lk5/c$b;

    move-result-object v1

    .line 36
    invoke-static {v3}, Lk5/r;->k(Lk5/f0;)Lk5/r;

    move-result-object v4

    invoke-virtual {v1, v4}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    .line 37
    invoke-static {v5}, Lk5/r;->k(Lk5/f0;)Lk5/r;

    move-result-object v4

    invoke-virtual {v1, v4}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    sget-object v4, Lx6/p;->a:Lx6/p;

    .line 38
    invoke-virtual {v1, v4}, Lk5/c$b;->f(Lk5/h;)Lk5/c$b;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lk5/c$b;->d()Lk5/c;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v0, v4

    .line 40
    const-class v1, Lx6/h0;

    .line 41
    invoke-static {v1}, Lk5/c;->c(Ljava/lang/Class;)Lk5/c$b;

    move-result-object v1

    const-string v4, "sessions-service-binder"

    .line 42
    invoke-virtual {v1, v4}, Lk5/c$b;->h(Ljava/lang/String;)Lk5/c$b;

    move-result-object v1

    .line 43
    invoke-static {v3}, Lk5/r;->k(Lk5/f0;)Lk5/r;

    move-result-object v3

    invoke-virtual {v1, v3}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    sget-object v3, Lx6/n;->a:Lx6/n;

    .line 44
    invoke-virtual {v1, v3}, Lk5/c$b;->f(Lk5/h;)Lk5/c$b;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lk5/c$b;->d()Lk5/c;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string v1, "1.2.0"

    .line 46
    invoke-static {v2, v1}, Lt6/h;->b(Ljava/lang/String;Ljava/lang/String;)Lk5/c;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 47
    invoke-static {v0}, Li9/j;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.firebase.sessions.FirebaseSessionsRegistrar.a (com.google.firebase.sessions.FirebaseSessionsRegistrar$a)
.class final Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$a;
.super Ljava/lang/Object;
.source "FirebaseSessionsRegistrar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;
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

    invoke-direct {p0}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar$a;-><init>()V

    return-void
.end method

###### Class x6.n (x6.n)
.class public final synthetic Lx6/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk5/h;


# static fields
.field public static final synthetic a:Lx6/n;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lx6/n;

    invoke-direct {v0}, Lx6/n;-><init>()V

    sput-object v0, Lx6/n;->a:Lx6/n;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lk5/e;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->a(Lk5/e;)Lx6/h0;

    move-result-object p1

    return-object p1
.end method

###### Class x6.o (x6.o)
.class public final synthetic Lx6/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk5/h;


# static fields
.field public static final synthetic a:Lx6/o;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lx6/o;

    invoke-direct {v0}, Lx6/o;-><init>()V

    sput-object v0, Lx6/o;->a:Lx6/o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lk5/e;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->b(Lk5/e;)Lx6/e0;

    move-result-object p1

    return-object p1
.end method

###### Class x6.p (x6.p)
.class public final synthetic Lx6/p;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk5/h;


# static fields
.field public static final synthetic a:Lx6/p;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lx6/p;

    invoke-direct {v0}, Lx6/p;-><init>()V

    sput-object v0, Lx6/p;->a:Lx6/p;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lk5/e;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->c(Lk5/e;)Lx6/x;

    move-result-object p1

    return-object p1
.end method

###### Class x6.q (x6.q)
.class public final synthetic Lx6/q;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk5/h;


# static fields
.field public static final synthetic a:Lx6/q;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lx6/q;

    invoke-direct {v0}, Lx6/q;-><init>()V

    sput-object v0, Lx6/q;->a:Lx6/q;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lk5/e;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->d(Lk5/e;)Lx6/c0;

    move-result-object p1

    return-object p1
.end method

###### Class x6.r (x6.r)
.class public final synthetic Lx6/r;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk5/h;


# static fields
.field public static final synthetic a:Lx6/r;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lx6/r;

    invoke-direct {v0}, Lx6/r;-><init>()V

    sput-object v0, Lx6/r;->a:Lx6/r;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lk5/e;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->e(Lk5/e;)Lx6/l;

    move-result-object p1

    return-object p1
.end method

###### Class x6.s (x6.s)
.class public final synthetic Lx6/s;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk5/h;


# static fields
.field public static final synthetic a:Lx6/s;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lx6/s;

    invoke-direct {v0}, Lx6/s;-><init>()V

    sput-object v0, Lx6/s;->a:Lx6/s;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lk5/e;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/google/firebase/sessions/FirebaseSessionsRegistrar;->f(Lk5/e;)Lz6/f;

    move-result-object p1

    return-object p1
.end method
