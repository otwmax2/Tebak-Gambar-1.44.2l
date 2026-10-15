###### Class com.google.android.gms.measurement.internal.d4 (com.google.android.gms.measurement.internal.d4)
.class final Lcom/google/android/gms/measurement/internal/d4;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-sdk@@20.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/internal/measurement/zzcf;

.field final synthetic p:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/zzcf;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/d4;->p:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/d4;->o:Lcom/google/android/gms/internal/measurement/zzcf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d4;->p:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->o:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->L()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/d4;->o:Lcom/google/android/gms/internal/measurement/zzcf;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/d4;->p:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->o:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->i()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzlp;->A(Lcom/google/android/gms/internal/measurement/zzcf;Z)V

    return-void
.end method
