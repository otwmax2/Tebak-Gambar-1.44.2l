###### Class da.s0 (da.s0)
.class public final Lda/s0;
.super Ljava/lang/Object;
.source "Debug.kt"


# static fields
.field private static final a:Z = false

.field private static final b:Z

.field private static final c:Z

.field private static final d:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string v0, "kotlinx.coroutines.debug"

    .line 1
    invoke-static {v0}, Lkotlinx/coroutines/internal/f0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_63

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    if-eqz v3, :cond_39

    const/16 v4, 0xddf

    if-eq v3, v4, :cond_30

    const v4, 0x1ad6f

    if-eq v3, v4, :cond_27

    const v4, 0x2dddaf

    if-ne v3, v4, :cond_43

    const-string v3, "auto"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    goto :goto_63

    :cond_27
    const-string v3, "off"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    goto :goto_63

    :cond_30
    const-string v3, "on"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    goto :goto_41

    :cond_39
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    :goto_41
    const/4 v0, 0x1

    goto :goto_64

    .line 3
    :cond_43
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System property \'kotlinx.coroutines.debug\' has unrecognized value \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_63
    :goto_63
    const/4 v0, 0x0

    .line 5
    :goto_64
    sput-boolean v0, Lda/s0;->b:Z

    if-eqz v0, :cond_71

    const-string v0, "kotlinx.coroutines.stacktrace.recovery"

    .line 6
    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/f0;->e(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_71

    goto :goto_72

    :cond_71
    const/4 v1, 0x0

    :goto_72
    sput-boolean v1, Lda/s0;->c:Z

    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lda/s0;->d:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public static final a()Z
    .registers 1

    .line 1
    sget-boolean v0, Lda/s0;->a:Z

    return v0
.end method

.method public static final b()Ljava/util/concurrent/atomic/AtomicLong;
    .registers 1

    .line 1
    sget-object v0, Lda/s0;->d:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method public static final c()Z
    .registers 1

    .line 1
    sget-boolean v0, Lda/s0;->b:Z

    return v0
.end method

.method public static final d()Z
    .registers 1

    .line 1
    sget-boolean v0, Lda/s0;->c:Z

    return v0
.end method
