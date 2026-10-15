###### Class com.google.android.gms.measurement.internal.d3 (com.google.android.gms.measurement.internal.d3)
.class final Lcom/google/android/gms/measurement/internal/d3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/measurement/internal/zzka;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzka;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/d3;->o:Lcom/google/android/gms/measurement/internal/zzka;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d3;->o:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzka;->q:Lcom/google/android/gms/measurement/internal/zzkb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzkb;->I(Lcom/google/android/gms/measurement/internal/zzkb;Lcom/google/android/gms/measurement/internal/zzeo;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d3;->o:Lcom/google/android/gms/measurement/internal/zzka;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzka;->q:Lcom/google/android/gms/measurement/internal/zzkb;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzkb;->J(Lcom/google/android/gms/measurement/internal/zzkb;)V

    return-void
.end method
