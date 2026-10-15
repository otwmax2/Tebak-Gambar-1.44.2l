###### Class com.google.android.gms.measurement.internal.d2 (com.google.android.gms.measurement.internal.d2)
.class final Lcom/google/android/gms/measurement/internal/d2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:J

.field final synthetic p:Lcom/google/android/gms/measurement/internal/zzjb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjb;J)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/d2;->p:Lcom/google/android/gms/measurement/internal/zzjb;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/d2;->o:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d2;->p:Lcom/google/android/gms/measurement/internal/zzjb;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->u()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/d2;->o:J

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzd;->i(J)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d2;->p:Lcom/google/android/gms/measurement/internal/zzjb;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzjb;->e:Lcom/google/android/gms/measurement/internal/zziu;

    return-void
.end method
