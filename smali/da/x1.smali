###### Class da.x1 (da.x1)
.class public interface abstract Lda/x1;
.super Ljava/lang/Object;
.source "Job.kt"

# interfaces
.implements Lk9/g$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lda/x1$b;,
        Lda/x1$a;
    }
.end annotation


# static fields
.field public static final m:Lda/x1$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lda/x1$b;->o:Lda/x1$b;

    sput-object v0, Lda/x1;->m:Lda/x1$b;

    return-void
.end method


# virtual methods
.method public abstract E(Ljava/util/concurrent/CancellationException;)V
.end method

.method public abstract c()Z
.end method

.method public abstract f(Ls9/l;)Lda/e1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls9/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh9/t;",
            ">;)",
            "Lda/e1;"
        }
    .end annotation
.end method

.method public abstract i(ZZLs9/l;)Lda/e1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ls9/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh9/t;",
            ">;)",
            "Lda/e1;"
        }
    .end annotation
.end method

.method public abstract isCancelled()Z
.end method

.method public abstract j()Ljava/util/concurrent/CancellationException;
.end method

.method public abstract start()Z
.end method

.method public abstract t(Lda/u;)Lda/s;
.end method

###### Class da.x1.a (da.x1$a)
.class public final Lda/x1$a;
.super Ljava/lang/Object;
.source "Job.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lda/x1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lda/x1;Ljava/lang/Object;Ls9/p;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lda/x1;",
            "TR;",
            "Ls9/p<",
            "-TR;-",
            "Lk9/g$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lk9/g$b$a;->a(Lk9/g$b;Ljava/lang/Object;Ls9/p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lda/x1;Lk9/g$c;)Lk9/g$b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lk9/g$b;",
            ">(",
            "Lda/x1;",
            "Lk9/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lk9/g$b$a;->b(Lk9/g$b;Lk9/g$c;)Lk9/g$b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lda/x1;ZZLs9/l;ILjava/lang/Object;)Lda/e1;
    .registers 6

    if-nez p5, :cond_11

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_7

    const/4 p1, 0x0

    :cond_7
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_c

    const/4 p2, 0x1

    .line 1
    :cond_c
    invoke-interface {p0, p1, p2, p3}, Lda/x1;->i(ZZLs9/l;)Lda/e1;

    move-result-object p0

    return-object p0

    :cond_11
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: invokeOnCompletion"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Lda/x1;Lk9/g$c;)Lk9/g;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lda/x1;",
            "Lk9/g$c<",
            "*>;)",
            "Lk9/g;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lk9/g$b$a;->c(Lk9/g$b;Lk9/g$c;)Lk9/g;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lda/x1;Lk9/g;)Lk9/g;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lk9/g$b$a;->d(Lk9/g$b;Lk9/g;)Lk9/g;

    move-result-object p0

    return-object p0
.end method

###### Class da.x1.b (da.x1$b)
.class public final Lda/x1$b;
.super Ljava/lang/Object;
.source "Job.kt"

# interfaces
.implements Lk9/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lda/x1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk9/g$c<",
        "Lda/x1;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic o:Lda/x1$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lda/x1$b;

    invoke-direct {v0}, Lda/x1$b;-><init>()V

    sput-object v0, Lda/x1$b;->o:Lda/x1$b;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
