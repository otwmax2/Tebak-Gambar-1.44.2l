###### Class x6.l (x6.l)
.class public final Lx6/l;
.super Ljava/lang/Object;
.source "FirebaseSessions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx6/l$b;
    }
.end annotation


# static fields
.field public static final c:Lx6/l$b;


# instance fields
.field private final a:Lb5/g;

.field private final b:Lz6/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lx6/l$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx6/l$b;-><init>(Lt9/g;)V

    sput-object v0, Lx6/l;->c:Lx6/l$b;

    return-void
.end method

.method public constructor <init>(Lb5/g;Lz6/f;Lk9/g;)V
    .registers 10

    const-string v0, "firebaseApp"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundDispatcher"

    invoke-static {p3, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx6/l;->a:Lb5/g;

    .line 3
    iput-object p2, p0, Lx6/l;->b:Lz6/f;

    const-string p2, "FirebaseSessions"

    const-string v0, "Initializing Firebase Sessions SDK."

    .line 4
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p1}, Lb5/g;->l()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 6
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_42

    .line 7
    check-cast p1, Landroid/app/Application;

    sget-object p2, Lx6/j0;->o:Lx6/j0;

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 8
    invoke-static {p3}, Lda/p0;->a(Lk9/g;)Lda/o0;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lx6/l$a;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p3, p1}, Lx6/l$a;-><init>(Lx6/l;Lk9/g;Lk9/d;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lda/h;->b(Lda/o0;Lk9/g;Lda/q0;Ls9/p;ILjava/lang/Object;)Lda/x1;

    goto :goto_5f

    .line 9
    :cond_42
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to register lifecycle callbacks, unexpected context "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5f
    return-void
.end method

.method public static final synthetic a(Lx6/l;)Lb5/g;
    .registers 1

    .line 1
    iget-object p0, p0, Lx6/l;->a:Lb5/g;

    return-object p0
.end method

.method public static final synthetic b(Lx6/l;)Lz6/f;
    .registers 1

    .line 1
    iget-object p0, p0, Lx6/l;->b:Lz6/f;

    return-object p0
.end method

###### Class x6.l.a (x6.l$a)
.class final Lx6/l$a;
.super Lm9/k;
.source "FirebaseSessions.kt"

# interfaces
.implements Ls9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx6/l;-><init>(Lb5/g;Lz6/f;Lk9/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm9/k;",
        "Ls9/p<",
        "Lda/o0;",
        "Lk9/d<",
        "-",
        "Lh9/t;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lm9/f;
    c = "com.google.firebase.sessions.FirebaseSessions$1"
    f = "FirebaseSessions.kt"
    l = {
        0x2c,
        0x30
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field s:I

.field final synthetic t:Lx6/l;

.field final synthetic u:Lk9/g;


# direct methods
.method constructor <init>(Lx6/l;Lk9/g;Lk9/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx6/l;",
            "Lk9/g;",
            "Lk9/d<",
            "-",
            "Lx6/l$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lx6/l$a;->t:Lx6/l;

    iput-object p2, p0, Lx6/l$a;->u:Lk9/g;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lm9/k;-><init>(ILk9/d;)V

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

    new-instance p1, Lx6/l$a;

    iget-object v0, p0, Lx6/l$a;->t:Lx6/l;

    iget-object v1, p0, Lx6/l$a;->u:Lk9/g;

    invoke-direct {p1, v0, v1, p2}, Lx6/l$a;-><init>(Lx6/l;Lk9/g;Lk9/d;)V

    return-object p1
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lx6/l$a;->s:I

    const-string v2, "FirebaseSessions"

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_20

    if-eq v1, v4, :cond_1c

    if-ne v1, v3, :cond_14

    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    goto :goto_6d

    .line 2
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1c
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    goto :goto_2e

    :cond_20
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    .line 4
    sget-object p1, Ly6/a;->a:Ly6/a;

    iput v4, p0, Lx6/l$a;->s:I

    invoke-virtual {p1, p0}, Ly6/a;->c(Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2e

    return-object v0

    .line 5
    :cond_2e
    :goto_2e
    check-cast p1, Ljava/util/Map;

    .line 6
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    .line 7
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_3f

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3f

    goto :goto_56

    .line 8
    :cond_3f
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_43
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly6/b;

    .line 9
    invoke-interface {v1}, Ly6/b;->b()Z

    move-result v1

    if-eqz v1, :cond_43

    const/4 v4, 0x0

    :cond_56
    :goto_56
    if-eqz v4, :cond_5e

    const-string p1, "No Sessions subscribers. Not listening to lifecycle events."

    .line 10
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99

    .line 11
    :cond_5e
    iget-object p1, p0, Lx6/l$a;->t:Lx6/l;

    invoke-static {p1}, Lx6/l;->b(Lx6/l;)Lz6/f;

    move-result-object p1

    iput v3, p0, Lx6/l$a;->s:I

    invoke-virtual {p1, p0}, Lz6/f;->g(Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6d

    return-object v0

    .line 12
    :cond_6d
    :goto_6d
    iget-object p1, p0, Lx6/l$a;->t:Lx6/l;

    invoke-static {p1}, Lx6/l;->b(Lx6/l;)Lz6/f;

    move-result-object p1

    invoke-virtual {p1}, Lz6/f;->d()Z

    move-result p1

    if-nez p1, :cond_7f

    const-string p1, "Sessions SDK disabled. Not listening to lifecycle events."

    .line 13
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99

    .line 14
    :cond_7f
    new-instance p1, Lx6/g0;

    iget-object v0, p0, Lx6/l$a;->u:Lk9/g;

    invoke-direct {p1, v0}, Lx6/g0;-><init>(Lk9/g;)V

    .line 15
    invoke-virtual {p1}, Lx6/g0;->i()V

    .line 16
    sget-object v0, Lx6/j0;->o:Lx6/j0;

    invoke-virtual {v0, p1}, Lx6/j0;->a(Lx6/g0;)V

    .line 17
    iget-object p1, p0, Lx6/l$a;->t:Lx6/l;

    invoke-static {p1}, Lx6/l;->a(Lx6/l;)Lb5/g;

    move-result-object p1

    sget-object v0, Lx6/k;->a:Lx6/k;

    invoke-virtual {p1, v0}, Lb5/g;->h(Lb5/h;)V

    .line 18
    :goto_99
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lda/o0;

    check-cast p2, Lk9/d;

    invoke-virtual {p0, p1, p2}, Lx6/l$a;->l(Lda/o0;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lda/o0;Lk9/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lda/o0;",
            "Lk9/d<",
            "-",
            "Lh9/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lx6/l$a;->d(Ljava/lang/Object;Lk9/d;)Lk9/d;

    move-result-object p1

    check-cast p1, Lx6/l$a;

    sget-object p2, Lh9/t;->a:Lh9/t;

    invoke-virtual {p1, p2}, Lx6/l$a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class x6.k (x6.k)
.class public final synthetic Lx6/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lb5/h;


# static fields
.field public static final synthetic a:Lx6/k;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lx6/k;

    invoke-direct {v0}, Lx6/k;-><init>()V

    sput-object v0, Lx6/k;->a:Lx6/k;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class x6.l.b (x6.l$b)
.class public final Lx6/l$b;
.super Ljava/lang/Object;
.source "FirebaseSessions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx6/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
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

    invoke-direct {p0}, Lx6/l$b;-><init>()V

    return-void
.end method
