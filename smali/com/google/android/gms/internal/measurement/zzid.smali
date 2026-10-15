###### Class com.google.android.gms.internal.measurement.zzid (com.google.android.gms.internal.measurement.zzid)
.class public abstract Lcom/google/android/gms/internal/measurement/zzid;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lcom/google/android/gms/internal/measurement/zzid;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zzib;->o:Lcom/google/android/gms/internal/measurement/zzib;

    return-object v0
.end method

.method public static d(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzid;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzie;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/zzie;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
.end method

.method public abstract b()Z
.end method
