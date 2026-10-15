###### Class kotlinx.coroutines.scheduling.f (kotlinx.coroutines.scheduling.f)
.class public Lkotlinx/coroutines/scheduling/f;
.super Lda/n1;
.source "Dispatcher.kt"


# instance fields
.field private final r:I

.field private final s:I

.field private final t:J

.field private final u:Ljava/lang/String;

.field private v:Lkotlinx/coroutines/scheduling/a;


# direct methods
.method public constructor <init>(IIJLjava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Lda/n1;-><init>()V

    .line 2
    iput p1, p0, Lkotlinx/coroutines/scheduling/f;->r:I

    .line 3
    iput p2, p0, Lkotlinx/coroutines/scheduling/f;->s:I

    .line 4
    iput-wide p3, p0, Lkotlinx/coroutines/scheduling/f;->t:J

    .line 5
    iput-object p5, p0, Lkotlinx/coroutines/scheduling/f;->u:Ljava/lang/String;

    .line 6
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/f;->x()Lkotlinx/coroutines/scheduling/a;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/f;->v:Lkotlinx/coroutines/scheduling/a;

    return-void
.end method

.method private final x()Lkotlinx/coroutines/scheduling/a;
    .registers 8

    .line 1
    new-instance v6, Lkotlinx/coroutines/scheduling/a;

    iget v1, p0, Lkotlinx/coroutines/scheduling/f;->r:I

    iget v2, p0, Lkotlinx/coroutines/scheduling/f;->s:I

    iget-wide v3, p0, Lkotlinx/coroutines/scheduling/f;->t:J

    iget-object v5, p0, Lkotlinx/coroutines/scheduling/f;->u:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/a;-><init>(IIJLjava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public m(Lk9/g;Ljava/lang/Runnable;)V
    .registers 9

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/f;->v:Lkotlinx/coroutines/scheduling/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/a;->i(Lkotlinx/coroutines/scheduling/a;Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;ZILjava/lang/Object;)V

    return-void
.end method

.method public final z(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/f;->v:Lkotlinx/coroutines/scheduling/a;

    invoke-virtual {v0, p1, p2, p3}, Lkotlinx/coroutines/scheduling/a;->h(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/i;Z)V

    return-void
.end method
