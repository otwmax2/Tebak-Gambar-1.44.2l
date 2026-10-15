###### Class com.google.android.gms.measurement.internal.g2 (com.google.android.gms.measurement.internal.g2)
.class final Lcom/google/android/gms/measurement/internal/g2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/measurement/internal/zzjb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjb;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/g2;->o:Lcom/google/android/gms/measurement/internal/zzjb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g2;->o:Lcom/google/android/gms/measurement/internal/zzjb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzjb;->q(Lcom/google/android/gms/measurement/internal/zzjb;Lcom/google/android/gms/measurement/internal/zziu;)V

    return-void
.end method
