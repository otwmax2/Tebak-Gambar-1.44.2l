###### Class da.i0 (da.i0)
.class public abstract Lda/i0;
.super Lk9/a;
.source "CoroutineDispatcher.kt"

# interfaces
.implements Lk9/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lda/i0$a;
    }
.end annotation


# static fields
.field public static final p:Lda/i0$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lda/i0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lda/i0$a;-><init>(Lt9/g;)V

    sput-object v0, Lda/i0;->p:Lda/i0$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    sget-object v0, Lk9/e;->n:Lk9/e$b;

    invoke-direct {p0, v0}, Lk9/a;-><init>(Lk9/g$c;)V

    return-void
.end method


# virtual methods
.method public b(Lk9/g$c;)Lk9/g$b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lk9/g$b;",
            ">(",
            "Lk9/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lk9/e$a;->a(Lk9/e;Lk9/g$c;)Lk9/g$b;

    move-result-object p1

    return-object p1
.end method

.method public final h(Lk9/d;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/d<",
            "*>;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Lkotlinx/coroutines/internal/h;

    .line 2
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/h;->p()V

    return-void
.end method

.method public abstract m(Lk9/g;Ljava/lang/Runnable;)V
.end method

.method public o(Lk9/g;)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public final p(Lk9/d;)Lk9/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lk9/d<",
            "-TT;>;)",
            "Lk9/d<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/h;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/h;-><init>(Lda/i0;Lk9/d;)V

    return-object v0
.end method

.method public q(Lk9/g$c;)Lk9/g;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk9/g$c<",
            "*>;)",
            "Lk9/g;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lk9/e$a;->b(Lk9/e;Lk9/g$c;)Lk9/g;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lda/t0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lda/t0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w(I)Lda/i0;
    .registers 3

    .line 1
    invoke-static {p1}, Lkotlinx/coroutines/internal/o;->a(I)V

    .line 2
    new-instance v0, Lkotlinx/coroutines/internal/n;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/n;-><init>(Lda/i0;I)V

    return-object v0
.end method

###### Class da.i0.a (da.i0$a)
.class public final Lda/i0$a;
.super Lk9/b;
.source "CoroutineDispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lda/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk9/b<",
        "Lk9/e;",
        "Lda/i0;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 1
    sget-object v0, Lk9/e;->n:Lk9/e$b;

    .line 2
    sget-object v1, Lda/i0$a$a;->o:Lda/i0$a$a;

    .line 3
    invoke-direct {p0, v0, v1}, Lk9/b;-><init>(Lk9/g$c;Ls9/l;)V

    return-void
.end method

.method public synthetic constructor <init>(Lt9/g;)V
    .registers 2

    invoke-direct {p0}, Lda/i0$a;-><init>()V

    return-void
.end method

###### Class da.i0.a.C0147a (da.i0$a$a)
.class final Lda/i0$a$a;
.super Lt9/n;
.source "CoroutineDispatcher.kt"

# interfaces
.implements Ls9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lda/i0$a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt9/n;",
        "Ls9/l<",
        "Lk9/g$b;",
        "Lda/i0;",
        ">;"
    }
.end annotation


# static fields
.field public static final o:Lda/i0$a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lda/i0$a$a;

    invoke-direct {v0}, Lda/i0$a$a;-><init>()V

    sput-object v0, Lda/i0$a$a;->o:Lda/i0$a$a;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lt9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lk9/g$b;)Lda/i0;
    .registers 3

    .line 1
    instance-of v0, p1, Lda/i0;

    if-eqz v0, :cond_7

    check-cast p1, Lda/i0;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p1, Lk9/g$b;

    invoke-virtual {p0, p1}, Lda/i0$a$a;->c(Lk9/g$b;)Lda/i0;

    move-result-object p1

    return-object p1
.end method
