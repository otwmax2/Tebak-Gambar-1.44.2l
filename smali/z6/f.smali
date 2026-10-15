###### Class z6.f (z6.f)
.class public final Lz6/f;
.super Ljava/lang/Object;
.source "SessionsSettings.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz6/f$a;
    }
.end annotation


# static fields
.field public static final c:Lz6/f$a;

.field private static final d:Lv9/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv9/a<",
            "Landroid/content/Context;",
            "Lh0/f<",
            "Lk0/d;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lz6/h;

.field private final b:Lz6/h;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lz6/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz6/f$a;-><init>(Lt9/g;)V

    sput-object v0, Lz6/f;->c:Lz6/f$a;

    .line 1
    sget-object v0, Lx6/w;->a:Lx6/w;

    invoke-virtual {v0}, Lx6/w;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lj0/a;->b(Ljava/lang/String;Li0/b;Ls9/l;Lda/o0;ILjava/lang/Object;)Lv9/a;

    move-result-object v0

    sput-object v0, Lz6/f;->d:Lv9/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lk9/g;Lk9/g;Ll6/e;Lx6/b;)V
    .registers 15

    .line 4
    new-instance v0, Lz6/b;

    invoke-direct {v0, p1}, Lz6/b;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance v7, Lz6/c;

    .line 6
    new-instance v8, Lz6/d;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v8

    move-object v2, p5

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lz6/d;-><init>(Lx6/b;Lk9/g;Ljava/lang/String;ILt9/g;)V

    .line 7
    sget-object p2, Lz6/f;->c:Lz6/f$a;

    invoke-static {p2, p1}, Lz6/f$a;->a(Lz6/f$a;Landroid/content/Context;)Lh0/f;

    move-result-object v6

    move-object v1, v7

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, v8

    .line 8
    invoke-direct/range {v1 .. v6}, Lz6/c;-><init>(Lk9/g;Ll6/e;Lx6/b;Lz6/a;Lh0/f;)V

    .line 9
    invoke-direct {p0, v0, v7}, Lz6/f;-><init>(Lz6/h;Lz6/h;)V

    return-void
.end method

.method public constructor <init>(Lb5/g;Lk9/g;Lk9/g;Ll6/e;)V
    .registers 12

    const-string v0, "firebaseApp"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blockingDispatcher"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundDispatcher"

    invoke-static {p3, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseInstallationsApi"

    invoke-static {p4, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lb5/g;->l()Landroid/content/Context;

    move-result-object v2

    const-string v0, "firebaseApp.applicationContext"

    invoke-static {v2, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lx6/b0;->a:Lx6/b0;

    invoke-virtual {v0, p1}, Lx6/b0;->b(Lb5/g;)Lx6/b;

    move-result-object v6

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 12
    invoke-direct/range {v1 .. v6}, Lz6/f;-><init>(Landroid/content/Context;Lk9/g;Lk9/g;Ll6/e;Lx6/b;)V

    return-void
.end method

.method public constructor <init>(Lz6/h;Lz6/h;)V
    .registers 4

    const-string v0, "localOverrideSettings"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteSettings"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lz6/f;->a:Lz6/h;

    .line 3
    iput-object p2, p0, Lz6/f;->b:Lz6/h;

    return-void
.end method

.method public static final synthetic a()Lv9/a;
    .registers 1

    .line 1
    sget-object v0, Lz6/f;->d:Lv9/a;

    return-object v0
.end method

.method private final e(D)Z
    .registers 7

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmpg-double v3, v1, p1

    if-gtz v3, :cond_e

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, p1, v1

    if-gtz v3, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private final f(J)Z
    .registers 4

    .line 1
    invoke-static {p1, p2}, Lca/a;->Q(J)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1, p2}, Lca/a;->L(J)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method


# virtual methods
.method public final b()D
    .registers 4

    .line 1
    iget-object v0, p0, Lz6/f;->a:Lz6/h;

    invoke-interface {v0}, Lz6/h;->d()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 2
    invoke-direct {p0, v0, v1}, Lz6/f;->e(D)Z

    move-result v2

    if-eqz v2, :cond_13

    return-wide v0

    .line 3
    :cond_13
    iget-object v0, p0, Lz6/f;->b:Lz6/h;

    invoke-interface {v0}, Lz6/h;->d()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 4
    invoke-direct {p0, v0, v1}, Lz6/f;->e(D)Z

    move-result v2

    if-eqz v2, :cond_26

    return-wide v0

    :cond_26
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method

.method public final c()J
    .registers 4

    .line 1
    iget-object v0, p0, Lz6/f;->a:Lz6/h;

    invoke-interface {v0}, Lz6/h;->c()Lca/a;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lca/a;->U()J

    move-result-wide v0

    .line 2
    invoke-direct {p0, v0, v1}, Lz6/f;->f(J)Z

    move-result v2

    if-eqz v2, :cond_13

    return-wide v0

    .line 3
    :cond_13
    iget-object v0, p0, Lz6/f;->b:Lz6/h;

    invoke-interface {v0}, Lz6/h;->c()Lca/a;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lca/a;->U()J

    move-result-wide v0

    .line 4
    invoke-direct {p0, v0, v1}, Lz6/f;->f(J)Z

    move-result v2

    if-eqz v2, :cond_26

    return-wide v0

    .line 5
    :cond_26
    sget-object v0, Lca/a;->p:Lca/a$a;

    const/16 v0, 0x1e

    sget-object v1, Lca/d;->t:Lca/d;

    invoke-static {v0, v1}, Lca/c;->h(ILca/d;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lz6/f;->a:Lz6/h;

    invoke-interface {v0}, Lz6/h;->a()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_d
    iget-object v0, p0, Lz6/f;->b:Lz6/h;

    invoke-interface {v0}, Lz6/h;->a()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1a
    const/4 v0, 0x1

    return v0
.end method

.method public final g(Lk9/d;)Ljava/lang/Object;
    .registers 7
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

    instance-of v0, p1, Lz6/f$b;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lz6/f$b;

    iget v1, v0, Lz6/f$b;->u:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lz6/f$b;->u:I

    goto :goto_18

    :cond_13
    new-instance v0, Lz6/f$b;

    invoke-direct {v0, p0, p1}, Lz6/f$b;-><init>(Lz6/f;Lk9/d;)V

    :goto_18
    iget-object p1, v0, Lz6/f$b;->s:Ljava/lang/Object;

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lz6/f$b;->u:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3c

    if-eq v2, v4, :cond_34

    if-ne v2, v3, :cond_2c

    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    goto :goto_5b

    .line 2
    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_34
    iget-object v2, v0, Lz6/f$b;->r:Ljava/lang/Object;

    check-cast v2, Lz6/f;

    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    goto :goto_4d

    :cond_3c
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lz6/f;->a:Lz6/h;

    iput-object p0, v0, Lz6/f$b;->r:Ljava/lang/Object;

    iput v4, v0, Lz6/f$b;->u:I

    invoke-interface {p1, v0}, Lz6/h;->b(Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4c

    return-object v1

    :cond_4c
    move-object v2, p0

    .line 5
    :goto_4d
    iget-object p1, v2, Lz6/f;->b:Lz6/h;

    const/4 v2, 0x0

    iput-object v2, v0, Lz6/f$b;->r:Ljava/lang/Object;

    iput v3, v0, Lz6/f$b;->u:I

    invoke-interface {p1, v0}, Lz6/h;->b(Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5b

    return-object v1

    .line 6
    :cond_5b
    :goto_5b
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

###### Class z6.f.a (z6.f$a)
.class public final Lz6/f$a;
.super Ljava/lang/Object;
.source "SessionsSettings.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz6/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:[Lz9/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lz9/h<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Lz9/h;

    .line 1
    new-instance v1, Lt9/u;

    const-class v2, Lz6/f$a;

    const-string v3, "dataStore"

    const-string v4, "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lt9/u;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lt9/z;->f(Lt9/t;)Lz9/g;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lz6/f$a;->a:[Lz9/h;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt9/g;)V
    .registers 2

    invoke-direct {p0}, Lz6/f$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lz6/f$a;Landroid/content/Context;)Lh0/f;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lz6/f$a;->b(Landroid/content/Context;)Lh0/f;

    move-result-object p0

    return-object p0
.end method

.method private final b(Landroid/content/Context;)Lh0/f;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lh0/f<",
            "Lk0/d;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lz6/f;->a()Lv9/a;

    move-result-object v0

    sget-object v1, Lz6/f$a;->a:[Lz9/h;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 2
    invoke-interface {v0, p1, v1}, Lv9/a;->a(Ljava/lang/Object;Lz9/h;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh0/f;

    return-object p1
.end method


# virtual methods
.method public final c()Lz6/f;
    .registers 3

    .line 1
    sget-object v0, Lb5/c;->a:Lb5/c;

    invoke-static {v0}, Lb5/o;->a(Lb5/c;)Lb5/g;

    move-result-object v0

    const-class v1, Lz6/f;

    invoke-virtual {v0, v1}, Lb5/g;->j(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Firebase.app[SessionsSettings::class.java]"

    invoke-static {v0, v1}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lz6/f;

    return-object v0
.end method

###### Class z6.f.b (z6.f$b)
.class final Lz6/f$b;
.super Lm9/d;
.source "SessionsSettings.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz6/f;->g(Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lm9/f;
    c = "com.google.firebase.sessions.settings.SessionsSettings"
    f = "SessionsSettings.kt"
    l = {
        0x86,
        0x87
    }
    m = "updateSettings"
.end annotation


# instance fields
.field r:Ljava/lang/Object;

.field synthetic s:Ljava/lang/Object;

.field final synthetic t:Lz6/f;

.field u:I


# direct methods
.method constructor <init>(Lz6/f;Lk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz6/f;",
            "Lk9/d<",
            "-",
            "Lz6/f$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lz6/f$b;->t:Lz6/f;

    invoke-direct {p0, p2}, Lm9/d;-><init>(Lk9/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lz6/f$b;->s:Ljava/lang/Object;

    iget p1, p0, Lz6/f$b;->u:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lz6/f$b;->u:I

    iget-object p1, p0, Lz6/f$b;->t:Lz6/f;

    invoke-virtual {p1, p0}, Lz6/f;->g(Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
