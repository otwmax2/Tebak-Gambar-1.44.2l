###### Class com.google.android.gms.measurement.internal.e0 (com.google.android.gms.measurement.internal.e0)
.class final Lcom/google/android/gms/measurement/internal/e0;
.super Ljava/util/concurrent/FutureTask;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final o:J

.field final p:Z

.field private final q:Ljava/lang/String;

.field final synthetic r:Lcom/google/android/gms/measurement/internal/zzgf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzgf;Ljava/lang/Runnable;ZLjava/lang/String;)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/e0;->r:Lcom/google/android/gms/measurement/internal/zzgf;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 2
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzgf;->q()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/e0;->o:J

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/e0;->q:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/e0;->p:Z

    const-wide p2, 0x7fffffffffffffffL

    cmp-long p4, v0, p2

    if-nez p4, :cond_2f

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    const-string p2, "Tasks index overflow"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    :cond_2f
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzgf;Ljava/util/concurrent/Callable;ZLjava/lang/String;)V
    .registers 7

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/e0;->r:Lcom/google/android/gms/measurement/internal/zzgf;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    const-string p2, "Task exception on worker thread"

    .line 7
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzgf;->q()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p4

    .line 8
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/e0;->o:J

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/e0;->q:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/e0;->p:Z

    const-wide p2, 0x7fffffffffffffffL

    cmp-long p4, v0, p2

    if-nez p4, :cond_30

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    const-string p2, "Tasks index overflow"

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    :cond_30
    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 8

    .line 1
    check-cast p1, Lcom/google/android/gms/measurement/internal/e0;

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/e0;->p:Z

    .line 2
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/e0;->p:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_e

    if-nez v0, :cond_d

    goto :goto_1c

    :cond_d
    return v3

    :cond_e
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/e0;->o:J

    .line 3
    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/e0;->o:J

    cmp-long p1, v0, v4

    if-gez p1, :cond_18

    const/4 v2, -0x1

    goto :goto_1c

    :cond_18
    cmp-long p1, v0, v4

    if-lez p1, :cond_1d

    :goto_1c
    return v2

    :cond_1d
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/e0;->r:Lcom/google/android/gms/measurement/internal/zzgf;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzey;->o()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/e0;->o:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Two tasks share the same index. index"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method

.method protected final setException(Ljava/lang/Throwable;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e0;->r:Lcom/google/android/gms/measurement/internal/zzgf;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/e0;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    return-void
.end method
