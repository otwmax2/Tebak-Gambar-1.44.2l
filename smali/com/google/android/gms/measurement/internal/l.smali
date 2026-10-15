###### Class com.google.android.gms.measurement.internal.l (com.google.android.gms.measurement.internal.l)
.class Lcom/google/android/gms/measurement/internal/l;
.super Lcom/google/android/gms/measurement/internal/y0;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzgi;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/y0;-><init>(Lcom/google/android/gms/measurement/internal/zzgi;)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    return-void
.end method
