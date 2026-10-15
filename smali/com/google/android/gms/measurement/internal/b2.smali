###### Class com.google.android.gms.measurement.internal.b2 (com.google.android.gms.measurement.internal.b2)
.class final Lcom/google/android/gms/measurement/internal/b2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/measurement/internal/zziu;

.field final synthetic p:Lcom/google/android/gms/measurement/internal/zziu;

.field final synthetic q:J

.field final synthetic r:Z

.field final synthetic s:Lcom/google/android/gms/measurement/internal/zzjb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjb;Lcom/google/android/gms/measurement/internal/zziu;Lcom/google/android/gms/measurement/internal/zziu;JZ)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/b2;->s:Lcom/google/android/gms/measurement/internal/zzjb;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/b2;->o:Lcom/google/android/gms/measurement/internal/zziu;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/b2;->p:Lcom/google/android/gms/measurement/internal/zziu;

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/b2;->q:J

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/b2;->r:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/b2;->s:Lcom/google/android/gms/measurement/internal/zzjb;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/b2;->o:Lcom/google/android/gms/measurement/internal/zziu;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/b2;->p:Lcom/google/android/gms/measurement/internal/zziu;

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/b2;->q:J

    iget-boolean v5, p0, Lcom/google/android/gms/measurement/internal/b2;->r:Z

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/zzjb;->r(Lcom/google/android/gms/measurement/internal/zzjb;Lcom/google/android/gms/measurement/internal/zziu;Lcom/google/android/gms/measurement/internal/zziu;JZLandroid/os/Bundle;)V

    return-void
.end method
