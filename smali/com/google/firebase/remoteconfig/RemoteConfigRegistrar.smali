###### Class com.google.firebase.remoteconfig.RemoteConfigRegistrar (com.google.firebase.remoteconfig.RemoteConfigRegistrar)
.class public Lcom/google/firebase/remoteconfig/RemoteConfigRegistrar;
.super Ljava/lang/Object;
.source "RemoteConfigRegistrar.java"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lk5/e;)Lcom/google/firebase/remoteconfig/c;
    .registers 1

    invoke-static {p0}, Lcom/google/firebase/remoteconfig/RemoteConfigRegistrar;->lambda$getComponents$0(Lk5/e;)Lcom/google/firebase/remoteconfig/c;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Lk5/e;)Lcom/google/firebase/remoteconfig/c;
    .registers 8

    .line 1
    new-instance v6, Lcom/google/firebase/remoteconfig/c;

    const-class v0, Landroid/content/Context;

    .line 2
    invoke-interface {p0, v0}, Lk5/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const-class v0, Lb5/g;

    .line 3
    invoke-interface {p0, v0}, Lk5/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lb5/g;

    const-class v0, Ll6/e;

    .line 4
    invoke-interface {p0, v0}, Lk5/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ll6/e;

    const-class v0, Lcom/google/firebase/abt/component/a;

    .line 5
    invoke-interface {p0, v0}, Lk5/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/abt/component/a;

    const-string v4, "frc"

    invoke-virtual {v0, v4}, Lcom/google/firebase/abt/component/a;->b(Ljava/lang/String;)Lc5/c;

    move-result-object v4

    const-class v0, Le5/a;

    .line 6
    invoke-interface {p0, v0}, Lk5/e;->c(Ljava/lang/Class;)Lk6/b;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/remoteconfig/c;-><init>(Landroid/content/Context;Lb5/g;Ll6/e;Lc5/c;Lk6/b;)V

    return-object v6
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk5/c<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lk5/c;

    .line 1
    const-class v1, Lcom/google/firebase/remoteconfig/c;

    .line 2
    invoke-static {v1}, Lk5/c;->c(Ljava/lang/Class;)Lk5/c$b;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    .line 3
    invoke-static {v2}, Lk5/r;->j(Ljava/lang/Class;)Lk5/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    const-class v2, Lb5/g;

    .line 4
    invoke-static {v2}, Lk5/r;->j(Ljava/lang/Class;)Lk5/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    const-class v2, Ll6/e;

    .line 5
    invoke-static {v2}, Lk5/r;->j(Ljava/lang/Class;)Lk5/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    const-class v2, Lcom/google/firebase/abt/component/a;

    .line 6
    invoke-static {v2}, Lk5/r;->j(Ljava/lang/Class;)Lk5/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    const-class v2, Le5/a;

    .line 7
    invoke-static {v2}, Lk5/r;->i(Ljava/lang/Class;)Lk5/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk5/c$b;->b(Lk5/r;)Lk5/c$b;

    move-result-object v1

    sget-object v2, Lu6/l;->a:Lu6/l;

    .line 8
    invoke-virtual {v1, v2}, Lk5/c$b;->f(Lk5/h;)Lk5/c$b;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lk5/c$b;->e()Lk5/c$b;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lk5/c$b;->d()Lk5/c;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "fire-rc"

    const-string v2, "21.0.0"

    .line 11
    invoke-static {v1, v2}, Lt6/h;->b(Ljava/lang/String;Ljava/lang/String;)Lk5/c;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 12
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

###### Class u6.l (u6.l)
.class public final synthetic Lu6/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk5/h;


# static fields
.field public static final synthetic a:Lu6/l;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lu6/l;

    invoke-direct {v0}, Lu6/l;-><init>()V

    sput-object v0, Lu6/l;->a:Lu6/l;

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

    invoke-static {p1}, Lcom/google/firebase/remoteconfig/RemoteConfigRegistrar;->a(Lk5/e;)Lcom/google/firebase/remoteconfig/c;

    move-result-object p1

    return-object p1
.end method
