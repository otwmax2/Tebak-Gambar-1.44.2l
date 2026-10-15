###### Class com.google.android.gms.measurement.internal.e2 (com.google.android.gms.measurement.internal.e2)
.class final Lcom/google/android/gms/measurement/internal/e2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/measurement/internal/zziu;

.field final synthetic p:J

.field final synthetic q:Lcom/google/android/gms/measurement/internal/zzjb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjb;Lcom/google/android/gms/measurement/internal/zziu;J)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/e2;->q:Lcom/google/android/gms/measurement/internal/zzjb;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/e2;->o:Lcom/google/android/gms/measurement/internal/zziu;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/e2;->p:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e2;->q:Lcom/google/android/gms/measurement/internal/zzjb;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/e2;->o:Lcom/google/android/gms/measurement/internal/zziu;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/e2;->p:J

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjb;->u(Lcom/google/android/gms/measurement/internal/zzjb;Lcom/google/android/gms/measurement/internal/zziu;ZJ)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/e2;->q:Lcom/google/android/gms/measurement/internal/zzjb;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzjb;->e:Lcom/google/android/gms/measurement/internal/zziu;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->J()Lcom/google/android/gms/measurement/internal/zzkb;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkb;->p(Lcom/google/android/gms/measurement/internal/zziu;)V

    return-void
.end method
