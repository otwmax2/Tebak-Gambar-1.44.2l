###### Class com.google.android.gms.measurement.internal.c2 (com.google.android.gms.measurement.internal.c2)
.class final Lcom/google/android/gms/measurement/internal/c2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/measurement/internal/zzjb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjb;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c2;->o:Lcom/google/android/gms/measurement/internal/zzjb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c2;->o:Lcom/google/android/gms/measurement/internal/zzjb;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzjb;->m(Lcom/google/android/gms/measurement/internal/zzjb;)Lcom/google/android/gms/measurement/internal/zziu;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzjb;->e:Lcom/google/android/gms/measurement/internal/zziu;

    return-void
.end method
