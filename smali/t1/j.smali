###### Class t1.j (t1.j)
.class Lt1/j;
.super Ljava/lang/Object;
.source "UnobservedErrorNotifier.java"


# instance fields
.field private a:Lt1/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/h<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lt1/h;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/h<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lt1/j;->a:Lt1/h;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lt1/j;->a:Lt1/h;

    return-void
.end method

.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lt1/j;->a:Lt1/h;

    if-eqz v0, :cond_16

    .line 2
    invoke-static {}, Lt1/h;->t()Lt1/h$i;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 3
    new-instance v2, Lt1/k;

    invoke-virtual {v0}, Lt1/h;->r()Ljava/lang/Exception;

    move-result-object v3

    invoke-direct {v2, v3}, Lt1/k;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v0, v2}, Lt1/h$i;->a(Lt1/h;Lt1/k;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_1a

    .line 4
    :cond_16
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_1a
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
