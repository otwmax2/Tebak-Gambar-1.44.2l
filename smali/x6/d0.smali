###### Class x6.d0 (x6.d0)
.class public final Lx6/d0;
.super Ljava/lang/Object;
.source "SessionFirelogPublisher.kt"

# interfaces
.implements Lx6/c0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx6/d0$a;
    }
.end annotation


# static fields
.field public static final g:Lx6/d0$a;

.field private static final h:D


# instance fields
.field private final b:Lb5/g;

.field private final c:Ll6/e;

.field private final d:Lz6/f;

.field private final e:Lx6/i;

.field private final f:Lk9/g;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lx6/d0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx6/d0$a;-><init>(Lt9/g;)V

    sput-object v0, Lx6/d0;->g:Lx6/d0$a;

    .line 1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    sput-wide v0, Lx6/d0;->h:D

    return-void
.end method

.method public constructor <init>(Lb5/g;Ll6/e;Lz6/f;Lx6/i;Lk9/g;)V
    .registers 7

    const-string v0, "firebaseApp"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseInstallations"

    invoke-static {p2, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionSettings"

    invoke-static {p3, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventGDTLogger"

    invoke-static {p4, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundDispatcher"

    invoke-static {p5, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx6/d0;->b:Lb5/g;

    .line 3
    iput-object p2, p0, Lx6/d0;->c:Ll6/e;

    .line 4
    iput-object p3, p0, Lx6/d0;->d:Lz6/f;

    .line 5
    iput-object p4, p0, Lx6/d0;->e:Lx6/i;

    .line 6
    iput-object p5, p0, Lx6/d0;->f:Lk9/g;

    return-void
.end method

.method public static final synthetic b(Lx6/d0;Lx6/a0;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lx6/d0;->g(Lx6/a0;)V

    return-void
.end method

.method public static final synthetic c(Lx6/d0;)Lb5/g;
    .registers 1

    .line 1
    iget-object p0, p0, Lx6/d0;->b:Lb5/g;

    return-object p0
.end method

.method public static final synthetic d(Lx6/d0;Lk9/d;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lx6/d0;->h(Lk9/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lx6/d0;)Lz6/f;
    .registers 1

    .line 1
    iget-object p0, p0, Lx6/d0;->d:Lz6/f;

    return-object p0
.end method

.method public static final synthetic f(Lx6/d0;Lk9/d;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lx6/d0;->j(Lk9/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final g(Lx6/a0;)V
    .registers 5

    const-string v0, "SessionFirelogPublisher"

    .line 1
    :try_start_2
    iget-object v1, p0, Lx6/d0;->e:Lx6/i;

    invoke-interface {v1, p1}, Lx6/i;->a(Lx6/a0;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully logged Session Start event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lx6/a0;->c()Lx6/f0;

    move-result-object p1

    invoke-virtual {p1}, Lx6/f0;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_23} :catch_24

    goto :goto_2a

    :catch_24
    move-exception p1

    const-string v1, "Error logging Session Start event to DataTransport: "

    .line 3
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2a
    return-void
.end method

.method private final h(Lk9/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lx6/d0$b;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lx6/d0$b;

    iget v1, v0, Lx6/d0$b;->t:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lx6/d0$b;->t:I

    goto :goto_18

    :cond_13
    new-instance v0, Lx6/d0$b;

    invoke-direct {v0, p0, p1}, Lx6/d0$b;-><init>(Lx6/d0;Lk9/d;)V

    :goto_18
    iget-object p1, v0, Lx6/d0$b;->r:Ljava/lang/Object;

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lx6/d0$b;->t:I

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    if-ne v2, v3, :cond_2b

    :try_start_25
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_4a

    :catch_29
    move-exception p1

    goto :goto_4d

    .line 2
    :cond_2b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_33
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    .line 4
    :try_start_36
    iget-object p1, p0, Lx6/d0;->c:Ll6/e;

    invoke-interface {p1}, Ll6/e;->a()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    const-string v2, "firebaseInstallations.id"

    invoke-static {p1, v2}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput v3, v0, Lx6/d0$b;->t:I

    invoke-static {p1, v0}, Lia/b;->a(Lcom/google/android/gms/tasks/Task;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4a

    return-object v1

    :cond_4a
    :goto_4a
    check-cast p1, Ljava/lang/String;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_4c} :catch_29

    goto :goto_56

    :goto_4d
    const-string v0, "SessionFirelogPublisher"

    const-string v1, "Error getting Firebase Installation ID. Using an empty ID"

    .line 5
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, ""

    :goto_56
    return-object p1
.end method

.method private final i()Z
    .registers 6

    .line 1
    sget-wide v0, Lx6/d0;->h:D

    iget-object v2, p0, Lx6/d0;->d:Lz6/f;

    invoke-virtual {v2}, Lz6/f;->b()D

    move-result-wide v2

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private final j(Lk9/d;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lx6/d0$d;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lx6/d0$d;

    iget v1, v0, Lx6/d0$d;->u:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lx6/d0$d;->u:I

    goto :goto_18

    :cond_13
    new-instance v0, Lx6/d0$d;

    invoke-direct {v0, p0, p1}, Lx6/d0$d;-><init>(Lx6/d0;Lk9/d;)V

    :goto_18
    iget-object p1, v0, Lx6/d0$d;->s:Ljava/lang/Object;

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lx6/d0$d;->u:I

    const-string v3, "SessionFirelogPublisher"

    const/4 v4, 0x1

    if-eqz v2, :cond_37

    if-ne v2, v4, :cond_2f

    iget-object v0, v0, Lx6/d0$d;->r:Ljava/lang/Object;

    check-cast v0, Lx6/d0;

    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    goto :goto_4d

    .line 2
    :cond_2f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_37
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    const-string p1, "Data Collection is enabled for at least one Subscriber"

    .line 4
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Lx6/d0;->d:Lz6/f;

    iput-object p0, v0, Lx6/d0$d;->r:Ljava/lang/Object;

    iput v4, v0, Lx6/d0$d;->u:I

    invoke-virtual {p1, v0}, Lz6/f;->g(Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4c

    return-object v1

    :cond_4c
    move-object v0, p0

    .line 6
    :goto_4d
    iget-object p1, v0, Lx6/d0;->d:Lz6/f;

    invoke-virtual {p1}, Lz6/f;->d()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_60

    const-string p1, "Sessions SDK disabled. Events will not be sent."

    .line 7
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {v1}, Lm9/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 9
    :cond_60
    invoke-direct {v0}, Lx6/d0;->i()Z

    move-result p1

    if-nez p1, :cond_70

    const-string p1, "Sessions SDK has dropped this session due to sampling."

    .line 10
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {v1}, Lm9/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 12
    :cond_70
    invoke-static {v4}, Lm9/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lx6/z;)V
    .registers 9

    const-string v0, "sessionDetails"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lx6/d0;->f:Lk9/g;

    invoke-static {v0}, Lda/p0;->a(Lk9/g;)Lda/o0;

    move-result-object v1

    new-instance v4, Lx6/d0$c;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lx6/d0$c;-><init>(Lx6/d0;Lx6/z;Lk9/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lda/h;->b(Lda/o0;Lk9/g;Lda/q0;Ls9/p;ILjava/lang/Object;)Lda/x1;

    return-void
.end method

###### Class x6.d0.a (x6.d0$a)
.class public final Lx6/d0$a;
.super Ljava/lang/Object;
.source "SessionFirelogPublisher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx6/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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

    invoke-direct {p0}, Lx6/d0$a;-><init>()V

    return-void
.end method

###### Class x6.d0.b (x6.d0$b)
.class final Lx6/d0$b;
.super Lm9/d;
.source "SessionFirelogPublisher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx6/d0;->h(Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lm9/f;
    c = "com.google.firebase.sessions.SessionFirelogPublisherImpl"
    f = "SessionFirelogPublisher.kt"
    l = {
        0x71
    }
    m = "getFirebaseInstallationId"
.end annotation


# instance fields
.field synthetic r:Ljava/lang/Object;

.field final synthetic s:Lx6/d0;

.field t:I


# direct methods
.method constructor <init>(Lx6/d0;Lk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx6/d0;",
            "Lk9/d<",
            "-",
            "Lx6/d0$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lx6/d0$b;->s:Lx6/d0;

    invoke-direct {p0, p2}, Lm9/d;-><init>(Lk9/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lx6/d0$b;->r:Ljava/lang/Object;

    iget p1, p0, Lx6/d0$b;->t:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lx6/d0$b;->t:I

    iget-object p1, p0, Lx6/d0$b;->s:Lx6/d0;

    invoke-static {p1, p0}, Lx6/d0;->d(Lx6/d0;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class x6.d0.c (x6.d0$c)
.class final Lx6/d0$c;
.super Lm9/k;
.source "SessionFirelogPublisher.kt"

# interfaces
.implements Ls9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx6/d0;->a(Lx6/z;)V
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
    c = "com.google.firebase.sessions.SessionFirelogPublisherImpl$logSession$1"
    f = "SessionFirelogPublisher.kt"
    l = {
        0x40,
        0x48,
        0x49
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field A:I

.field final synthetic B:Lx6/d0;

.field final synthetic C:Lx6/z;

.field s:Ljava/lang/Object;

.field t:Ljava/lang/Object;

.field u:Ljava/lang/Object;

.field v:Ljava/lang/Object;

.field w:Ljava/lang/Object;

.field x:Ljava/lang/Object;

.field y:Ljava/lang/Object;

.field z:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lx6/d0;Lx6/z;Lk9/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx6/d0;",
            "Lx6/z;",
            "Lk9/d<",
            "-",
            "Lx6/d0$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lx6/d0$c;->B:Lx6/d0;

    iput-object p2, p0, Lx6/d0$c;->C:Lx6/z;

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

    new-instance p1, Lx6/d0$c;

    iget-object v0, p0, Lx6/d0$c;->B:Lx6/d0;

    iget-object v1, p0, Lx6/d0$c;->C:Lx6/z;

    invoke-direct {p1, v0, v1, p2}, Lx6/d0$c;-><init>(Lx6/d0;Lx6/z;Lk9/d;)V

    return-object p1
.end method

.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    invoke-static {}, Ll9/b;->c()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lx6/d0$c;->A:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_6d

    if-eq v1, v4, :cond_69

    if-eq v1, v3, :cond_48

    if-ne v1, v2, :cond_40

    iget-object v0, p0, Lx6/d0$c;->z:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lx6/d0$c;->y:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lx6/d0$c;->x:Ljava/lang/Object;

    check-cast v2, Lx6/u;

    iget-object v3, p0, Lx6/d0$c;->w:Ljava/lang/Object;

    check-cast v3, Lz6/f;

    iget-object v4, p0, Lx6/d0$c;->v:Ljava/lang/Object;

    check-cast v4, Lx6/z;

    iget-object v5, p0, Lx6/d0$c;->u:Ljava/lang/Object;

    check-cast v5, Lb5/g;

    iget-object v6, p0, Lx6/d0$c;->t:Ljava/lang/Object;

    check-cast v6, Lx6/b0;

    iget-object v7, p0, Lx6/d0$c;->s:Ljava/lang/Object;

    check-cast v7, Lx6/d0;

    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    move-object v8, v7

    move-object v11, v6

    move-object v6, v0

    move-object v0, v11

    move-object v12, v5

    move-object v5, v1

    move-object v1, v12

    move-object v13, v4

    move-object v4, v2

    move-object v2, v13

    goto/16 :goto_103

    .line 2
    :cond_40
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_48
    iget-object v1, p0, Lx6/d0$c;->y:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v3, p0, Lx6/d0$c;->x:Ljava/lang/Object;

    check-cast v3, Lx6/u;

    iget-object v4, p0, Lx6/d0$c;->w:Ljava/lang/Object;

    check-cast v4, Lz6/f;

    iget-object v5, p0, Lx6/d0$c;->v:Ljava/lang/Object;

    check-cast v5, Lx6/z;

    iget-object v6, p0, Lx6/d0$c;->u:Ljava/lang/Object;

    check-cast v6, Lb5/g;

    iget-object v7, p0, Lx6/d0$c;->t:Ljava/lang/Object;

    check-cast v7, Lx6/b0;

    iget-object v8, p0, Lx6/d0$c;->s:Ljava/lang/Object;

    check-cast v8, Lx6/d0;

    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    goto/16 :goto_dc

    :cond_69
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    goto :goto_7b

    :cond_6d
    invoke-static {p1}, Lh9/o;->b(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lx6/d0$c;->B:Lx6/d0;

    iput v4, p0, Lx6/d0$c;->A:I

    invoke-static {p1, p0}, Lx6/d0;->f(Lx6/d0;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7b

    return-object v0

    :cond_7b
    :goto_7b
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_112

    .line 5
    iget-object p1, p0, Lx6/d0$c;->B:Lx6/d0;

    .line 6
    sget-object v1, Lx6/b0;->a:Lx6/b0;

    .line 7
    invoke-static {p1}, Lx6/d0;->c(Lx6/d0;)Lb5/g;

    move-result-object v4

    .line 8
    iget-object v5, p0, Lx6/d0$c;->C:Lx6/z;

    .line 9
    iget-object v6, p0, Lx6/d0$c;->B:Lx6/d0;

    invoke-static {v6}, Lx6/d0;->e(Lx6/d0;)Lz6/f;

    move-result-object v6

    .line 10
    sget-object v7, Lx6/v;->a:Lx6/v;

    iget-object v8, p0, Lx6/d0$c;->B:Lx6/d0;

    invoke-static {v8}, Lx6/d0;->c(Lx6/d0;)Lb5/g;

    move-result-object v8

    invoke-virtual {v8}, Lb5/g;->l()Landroid/content/Context;

    move-result-object v8

    const-string v9, "firebaseApp.applicationContext"

    invoke-static {v8, v9}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lx6/v;->d(Landroid/content/Context;)Lx6/u;

    move-result-object v8

    .line 11
    iget-object v10, p0, Lx6/d0$c;->B:Lx6/d0;

    invoke-static {v10}, Lx6/d0;->c(Lx6/d0;)Lb5/g;

    move-result-object v10

    invoke-virtual {v10}, Lb5/g;->l()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v9}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Lx6/v;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    .line 12
    sget-object v9, Ly6/a;->a:Ly6/a;

    iput-object p1, p0, Lx6/d0$c;->s:Ljava/lang/Object;

    iput-object v1, p0, Lx6/d0$c;->t:Ljava/lang/Object;

    iput-object v4, p0, Lx6/d0$c;->u:Ljava/lang/Object;

    iput-object v5, p0, Lx6/d0$c;->v:Ljava/lang/Object;

    iput-object v6, p0, Lx6/d0$c;->w:Ljava/lang/Object;

    iput-object v8, p0, Lx6/d0$c;->x:Ljava/lang/Object;

    iput-object v7, p0, Lx6/d0$c;->y:Ljava/lang/Object;

    iput v3, p0, Lx6/d0$c;->A:I

    invoke-virtual {v9, p0}, Ly6/a;->c(Lk9/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_d2

    return-object v0

    :cond_d2
    move-object v11, v8

    move-object v8, p1

    move-object p1, v3

    move-object v3, v11

    move-object v12, v7

    move-object v7, v1

    move-object v1, v12

    move-object v13, v6

    move-object v6, v4

    move-object v4, v13

    .line 13
    :goto_dc
    check-cast p1, Ljava/util/Map;

    .line 14
    iget-object v9, p0, Lx6/d0$c;->B:Lx6/d0;

    iput-object v8, p0, Lx6/d0$c;->s:Ljava/lang/Object;

    iput-object v7, p0, Lx6/d0$c;->t:Ljava/lang/Object;

    iput-object v6, p0, Lx6/d0$c;->u:Ljava/lang/Object;

    iput-object v5, p0, Lx6/d0$c;->v:Ljava/lang/Object;

    iput-object v4, p0, Lx6/d0$c;->w:Ljava/lang/Object;

    iput-object v3, p0, Lx6/d0$c;->x:Ljava/lang/Object;

    iput-object v1, p0, Lx6/d0$c;->y:Ljava/lang/Object;

    iput-object p1, p0, Lx6/d0$c;->z:Ljava/lang/Object;

    iput v2, p0, Lx6/d0$c;->A:I

    invoke-static {v9, p0}, Lx6/d0;->d(Lx6/d0;Lk9/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_f9

    return-object v0

    :cond_f9
    move-object v0, v7

    move-object v11, v6

    move-object v6, p1

    move-object p1, v2

    move-object v2, v5

    move-object v5, v1

    move-object v1, v11

    move-object v12, v4

    move-object v4, v3

    move-object v3, v12

    :goto_103
    const-string v7, "getFirebaseInstallationId()"

    invoke-static {p1, v7}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, p1

    check-cast v7, Ljava/lang/String;

    .line 15
    invoke-virtual/range {v0 .. v7}, Lx6/b0;->a(Lb5/g;Lx6/z;Lz6/f;Lx6/u;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)Lx6/a0;

    move-result-object p1

    .line 16
    invoke-static {v8, p1}, Lx6/d0;->b(Lx6/d0;Lx6/a0;)V

    .line 17
    :cond_112
    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lda/o0;

    check-cast p2, Lk9/d;

    invoke-virtual {p0, p1, p2}, Lx6/d0$c;->l(Lda/o0;Lk9/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lx6/d0$c;->d(Ljava/lang/Object;Lk9/d;)Lk9/d;

    move-result-object p1

    check-cast p1, Lx6/d0$c;

    sget-object p2, Lh9/t;->a:Lh9/t;

    invoke-virtual {p1, p2}, Lx6/d0$c;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class x6.d0.d (x6.d0$d)
.class final Lx6/d0$d;
.super Lm9/d;
.source "SessionFirelogPublisher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx6/d0;->j(Lk9/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lm9/f;
    c = "com.google.firebase.sessions.SessionFirelogPublisherImpl"
    f = "SessionFirelogPublisher.kt"
    l = {
        0x5f
    }
    m = "shouldLogSession"
.end annotation


# instance fields
.field r:Ljava/lang/Object;

.field synthetic s:Ljava/lang/Object;

.field final synthetic t:Lx6/d0;

.field u:I


# direct methods
.method constructor <init>(Lx6/d0;Lk9/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx6/d0;",
            "Lk9/d<",
            "-",
            "Lx6/d0$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lx6/d0$d;->t:Lx6/d0;

    invoke-direct {p0, p2}, Lm9/d;-><init>(Lk9/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lx6/d0$d;->s:Ljava/lang/Object;

    iget p1, p0, Lx6/d0$d;->u:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lx6/d0$d;->u:I

    iget-object p1, p0, Lx6/d0$d;->t:Lx6/d0;

    invoke-static {p1, p0}, Lx6/d0;->f(Lx6/d0;Lk9/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
