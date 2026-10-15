###### Class kotlinx.coroutines.internal.i0 (kotlinx.coroutines.internal.i0)
.class public final Lkotlinx/coroutines/internal/i0;
.super Ljava/lang/Object;
.source "ThreadContext.kt"


# static fields
.field public static final a:Lkotlinx/coroutines/internal/e0;

.field private static final b:Ls9/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls9/p<",
            "Ljava/lang/Object;",
            "Lk9/g$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ls9/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls9/p<",
            "Lda/r2<",
            "*>;",
            "Lk9/g$b;",
            "Lda/r2<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final d:Ls9/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls9/p<",
            "Lkotlinx/coroutines/internal/l0;",
            "Lk9/g$b;",
            "Lkotlinx/coroutines/internal/l0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lkotlinx/coroutines/internal/e0;

    const-string v1, "NO_THREAD_ELEMENTS"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/e0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/i0;->a:Lkotlinx/coroutines/internal/e0;

    .line 2
    sget-object v0, Lkotlinx/coroutines/internal/i0$a;->o:Lkotlinx/coroutines/internal/i0$a;

    sput-object v0, Lkotlinx/coroutines/internal/i0;->b:Ls9/p;

    .line 3
    sget-object v0, Lkotlinx/coroutines/internal/i0$b;->o:Lkotlinx/coroutines/internal/i0$b;

    sput-object v0, Lkotlinx/coroutines/internal/i0;->c:Ls9/p;

    .line 4
    sget-object v0, Lkotlinx/coroutines/internal/i0$c;->o:Lkotlinx/coroutines/internal/i0$c;

    sput-object v0, Lkotlinx/coroutines/internal/i0;->d:Ls9/p;

    return-void
.end method

.method public static final a(Lk9/g;Ljava/lang/Object;)V
    .registers 4

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/i0;->a:Lkotlinx/coroutines/internal/e0;

    if-ne p1, v0, :cond_5

    return-void

    .line 2
    :cond_5
    instance-of v0, p1, Lkotlinx/coroutines/internal/l0;

    if-eqz v0, :cond_f

    .line 3
    check-cast p1, Lkotlinx/coroutines/internal/l0;

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/internal/l0;->b(Lk9/g;)V

    goto :goto_20

    :cond_f
    const/4 v0, 0x0

    .line 4
    sget-object v1, Lkotlinx/coroutines/internal/i0;->c:Ls9/p;

    invoke-interface {p0, v0, v1}, Lk9/g;->s(Ljava/lang/Object;Ls9/p;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lda/r2;

    .line 5
    invoke-interface {v0, p0, p1}, Lda/r2;->C(Lk9/g;Ljava/lang/Object;)V

    :goto_20
    return-void
.end method

.method public static final b(Lk9/g;)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/internal/i0;->b:Ls9/p;

    invoke-interface {p0, v0, v1}, Lk9/g;->s(Ljava/lang/Object;Ls9/p;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lt9/m;->b(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final c(Lk9/g;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_6

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/internal/i0;->b(Lk9/g;)Ljava/lang/Object;

    move-result-object p1

    :cond_6
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_10

    sget-object p0, Lkotlinx/coroutines/internal/i0;->a:Lkotlinx/coroutines/internal/e0;

    goto :goto_2c

    .line 3
    :cond_10
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_26

    .line 4
    new-instance v0, Lkotlinx/coroutines/internal/l0;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/l0;-><init>(Lk9/g;I)V

    sget-object p1, Lkotlinx/coroutines/internal/i0;->d:Ls9/p;

    invoke-interface {p0, v0, p1}, Lk9/g;->s(Ljava/lang/Object;Ls9/p;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2c

    .line 5
    :cond_26
    check-cast p1, Lda/r2;

    .line 6
    invoke-interface {p1, p0}, Lda/r2;->n(Lk9/g;)Ljava/lang/Object;

    move-result-object p0

    :goto_2c
    return-object p0
.end method

###### Class kotlinx.coroutines.internal.i0.a (kotlinx.coroutines.internal.i0$a)
.class final Lkotlinx/coroutines/internal/i0$a;
.super Lt9/n;
.source "ThreadContext.kt"

# interfaces
.implements Ls9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt9/n;",
        "Ls9/p<",
        "Ljava/lang/Object;",
        "Lk9/g$b;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final o:Lkotlinx/coroutines/internal/i0$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlinx/coroutines/internal/i0$a;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/i0$a;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/i0$a;->o:Lkotlinx/coroutines/internal/i0$a;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lt9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Lk9/g$b;)Ljava/lang/Object;
    .registers 4

    .line 1
    instance-of v0, p2, Lda/r2;

    if-eqz v0, :cond_1e

    .line 2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/lang/Integer;

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    const/4 v0, 0x1

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_15

    :cond_14
    const/4 p1, 0x1

    :goto_15
    if-nez p1, :cond_18

    goto :goto_1d

    :cond_18
    add-int/2addr p1, v0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_1d
    return-object p2

    :cond_1e
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p2, Lk9/g$b;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/i0$a;->c(Ljava/lang/Object;Lk9/g$b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class kotlinx.coroutines.internal.i0.b (kotlinx.coroutines.internal.i0$b)
.class final Lkotlinx/coroutines/internal/i0$b;
.super Lt9/n;
.source "ThreadContext.kt"

# interfaces
.implements Ls9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt9/n;",
        "Ls9/p<",
        "Lda/r2<",
        "*>;",
        "Lk9/g$b;",
        "Lda/r2<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final o:Lkotlinx/coroutines/internal/i0$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlinx/coroutines/internal/i0$b;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/i0$b;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/i0$b;->o:Lkotlinx/coroutines/internal/i0$b;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lt9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lda/r2;Lk9/g$b;)Lda/r2;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lda/r2<",
            "*>;",
            "Lk9/g$b;",
            ")",
            "Lda/r2<",
            "*>;"
        }
    .end annotation

    if-eqz p1, :cond_3

    return-object p1

    .line 1
    :cond_3
    instance-of p1, p2, Lda/r2;

    if-eqz p1, :cond_a

    check-cast p2, Lda/r2;

    goto :goto_b

    :cond_a
    const/4 p2, 0x0

    :goto_b
    return-object p2
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lda/r2;

    check-cast p2, Lk9/g$b;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/i0$b;->c(Lda/r2;Lk9/g$b;)Lda/r2;

    move-result-object p1

    return-object p1
.end method

###### Class kotlinx.coroutines.internal.i0.c (kotlinx.coroutines.internal.i0$c)
.class final Lkotlinx/coroutines/internal/i0$c;
.super Lt9/n;
.source "ThreadContext.kt"

# interfaces
.implements Ls9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt9/n;",
        "Ls9/p<",
        "Lkotlinx/coroutines/internal/l0;",
        "Lk9/g$b;",
        "Lkotlinx/coroutines/internal/l0;",
        ">;"
    }
.end annotation


# static fields
.field public static final o:Lkotlinx/coroutines/internal/i0$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlinx/coroutines/internal/i0$c;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/i0$c;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/i0$c;->o:Lkotlinx/coroutines/internal/i0$c;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lt9/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lkotlinx/coroutines/internal/l0;Lk9/g$b;)Lkotlinx/coroutines/internal/l0;
    .registers 4

    .line 1
    instance-of v0, p2, Lda/r2;

    if-eqz v0, :cond_f

    .line 2
    check-cast p2, Lda/r2;

    iget-object v0, p1, Lkotlinx/coroutines/internal/l0;->a:Lk9/g;

    invoke-interface {p2, v0}, Lda/r2;->n(Lk9/g;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lkotlinx/coroutines/internal/l0;->a(Lda/r2;Ljava/lang/Object;)V

    :cond_f
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/internal/l0;

    check-cast p2, Lk9/g$b;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/internal/i0$c;->c(Lkotlinx/coroutines/internal/l0;Lk9/g$b;)Lkotlinx/coroutines/internal/l0;

    move-result-object p1

    return-object p1
.end method
