###### Class com.google.android.gms.measurement.internal.q3 (com.google.android.gms.measurement.internal.q3)
.class Lcom/google/android/gms/measurement/internal/q3;
.super Lcom/google/android/gms/measurement/internal/y0;
.source "com.google.android.gms:play-services-measurement@@20.1.2"


# instance fields
.field protected final b:Lcom/google/android/gms/measurement/internal/zzli;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzli;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzli;->a0()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/y0;-><init>(Lcom/google/android/gms/measurement/internal/zzgi;)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    return-void
.end method
