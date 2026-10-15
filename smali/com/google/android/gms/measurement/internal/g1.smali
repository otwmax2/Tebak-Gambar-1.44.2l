###### Class com.google.android.gms.measurement.internal.g1 (com.google.android.gms.measurement.internal.g1)
.class final Lcom/google/android/gms/measurement/internal/g1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:J

.field final synthetic p:Lcom/google/android/gms/measurement/internal/zzin;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzin;J)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/g1;->p:Lcom/google/android/gms/measurement/internal/zzin;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/g1;->o:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g1;->p:Lcom/google/android/gms/measurement/internal/zzin;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/g1;->o:J

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzin;->w(JZ)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g1;->p:Lcom/google/android/gms/measurement/internal/zzin;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->J()Lcom/google/android/gms/measurement/internal/zzkb;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkb;->Q(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
