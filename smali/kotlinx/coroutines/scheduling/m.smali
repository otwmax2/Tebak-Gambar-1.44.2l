###### Class kotlinx.coroutines.scheduling.m (kotlinx.coroutines.scheduling.m)
.class final Lkotlinx/coroutines/scheduling/m;
.super Lda/i0;
.source "Dispatcher.kt"


# static fields
.field public static final q:Lkotlinx/coroutines/scheduling/m;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlinx/coroutines/scheduling/m;

    invoke-direct {v0}, Lkotlinx/coroutines/scheduling/m;-><init>()V

    sput-object v0, Lkotlinx/coroutines/scheduling/m;->q:Lkotlinx/coroutines/scheduling/m;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lda/i0;-><init>()V

    return-void
.end method


# virtual methods
.method public m(Lk9/g;Ljava/lang/Runnable;)V
    .registers 5

    .line 1
    sget-object p1, Lkotlinx/coroutines/scheduling/c;->w:Lkotlinx/coroutines/scheduling/c;

    sget-object v0, Lkotlinx/coroutines/scheduling/l;->g:Lkotlinx/coroutines/scheduling/i;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lkotlinx/coroutines/scheduling/f;->z(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;Z)V

    return-void
.end method
