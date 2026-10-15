###### Class com.google.android.gms.measurement.internal.a2 (com.google.android.gms.measurement.internal.a2)
.class final Lcom/google/android/gms/measurement/internal/a2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Landroid/os/Bundle;

.field final synthetic p:Lcom/google/android/gms/measurement/internal/zziu;

.field final synthetic q:Lcom/google/android/gms/measurement/internal/zziu;

.field final synthetic r:J

.field final synthetic s:Lcom/google/android/gms/measurement/internal/zzjb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjb;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zziu;Lcom/google/android/gms/measurement/internal/zziu;J)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/a2;->s:Lcom/google/android/gms/measurement/internal/zzjb;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/a2;->o:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/a2;->p:Lcom/google/android/gms/measurement/internal/zziu;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/a2;->q:Lcom/google/android/gms/measurement/internal/zziu;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/a2;->r:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a2;->s:Lcom/google/android/gms/measurement/internal/zzjb;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/a2;->o:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/a2;->p:Lcom/google/android/gms/measurement/internal/zziu;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/a2;->q:Lcom/google/android/gms/measurement/internal/zziu;

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/a2;->r:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzjb;->s(Lcom/google/android/gms/measurement/internal/zzjb;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zziu;Lcom/google/android/gms/measurement/internal/zziu;J)V

    return-void
.end method
