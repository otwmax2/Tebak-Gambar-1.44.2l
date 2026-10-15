###### Class com.google.android.gms.measurement.internal.k (com.google.android.gms.measurement.internal.k)
.class final Lcom/google/android/gms/measurement/internal/k;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:J

.field final synthetic p:Lcom/google/android/gms/measurement/internal/zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzd;J)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/k;->p:Lcom/google/android/gms/measurement/internal/zzd;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/k;->o:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k;->p:Lcom/google/android/gms/measurement/internal/zzd;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/k;->o:J

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzd;->f(Lcom/google/android/gms/measurement/internal/zzd;J)V

    return-void
.end method
