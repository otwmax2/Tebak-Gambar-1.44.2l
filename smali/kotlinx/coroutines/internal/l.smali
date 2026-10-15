###### Class kotlinx.coroutines.internal.l (kotlinx.coroutines.internal.l)
.class public final Lkotlinx/coroutines/internal/l;
.super Ljava/lang/Object;
.source "FastServiceLoader.kt"


# static fields
.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    :try_start_0
    sget-object v0, Lh9/n;->o:Lh9/n$a;

    const-string v0, "android.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    goto :goto_18

    :catchall_d
    move-exception v0

    sget-object v1, Lh9/n;->o:Lh9/n$a;

    invoke-static {v0}, Lh9/o;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lh9/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_18
    invoke-static {v0}, Lh9/n;->d(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lkotlinx/coroutines/internal/l;->a:Z

    return-void
.end method

.method public static final a()Z
    .registers 1

    .line 1
    sget-boolean v0, Lkotlinx/coroutines/internal/l;->a:Z

    return v0
.end method
