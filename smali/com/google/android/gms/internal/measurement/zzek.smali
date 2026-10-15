###### Class com.google.android.gms.internal.measurement.zzek (com.google.android.gms.internal.measurement.zzek)
.class public final Lcom/google/android/gms/internal/measurement/zzek;
.super Lcom/google/android/gms/internal/measurement/zzjy;
.source "com.google.android.gms:play-services-measurement@@20.1.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlk;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzel;->u()Lcom/google/android/gms/internal/measurement/zzel;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzjy;-><init>(Lcom/google/android/gms/internal/measurement/zzkc;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzef;)V
    .registers 2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzel;->u()Lcom/google/android/gms/internal/measurement/zzel;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzjy;-><init>(Lcom/google/android/gms/internal/measurement/zzkc;)V

    return-void
.end method


# virtual methods
.method public final r(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzek;
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->q:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzjy;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->q:Z

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzjy;->p:Lcom/google/android/gms/internal/measurement/zzkc;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/measurement/zzel;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzel;->z(Lcom/google/android/gms/internal/measurement/zzel;Ljava/lang/String;)V

    return-object p0
.end method
