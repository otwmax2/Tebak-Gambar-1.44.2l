###### Class da.v0 (da.v0)
.class public final Lda/v0;
.super Ljava/lang/Object;
.source "DefaultExecutor.kt"


# static fields
.field private static final a:Z

.field private static final b:Lda/x0;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "kotlinx.coroutines.main.delay"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/f0;->e(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lda/v0;->a:Z

    .line 2
    invoke-static {}, Lda/v0;->b()Lda/x0;

    move-result-object v0

    sput-object v0, Lda/v0;->b:Lda/x0;

    return-void
.end method

.method public static final a()Lda/x0;
    .registers 1

    .line 1
    sget-object v0, Lda/v0;->b:Lda/x0;

    return-object v0
.end method

.method private static final b()Lda/x0;
    .registers 2

    .line 1
    sget-boolean v0, Lda/v0;->a:Z

    if-nez v0, :cond_7

    sget-object v0, Lda/u0;->v:Lda/u0;

    return-object v0

    .line 2
    :cond_7
    invoke-static {}, Lda/d1;->c()Lda/h2;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lkotlinx/coroutines/internal/w;->c(Lda/h2;)Z

    move-result v1

    if-nez v1, :cond_19

    instance-of v1, v0, Lda/x0;

    if-nez v1, :cond_16

    goto :goto_19

    :cond_16
    check-cast v0, Lda/x0;

    goto :goto_1b

    :cond_19
    :goto_19
    sget-object v0, Lda/u0;->v:Lda/u0;

    :goto_1b
    return-object v0
.end method
