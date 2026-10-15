###### Class com.google.android.gms.measurement.internal.g0 (com.google.android.gms.measurement.internal.g0)
.class final Lcom/google/android/gms/measurement/internal/g0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/measurement/internal/zzhl;

.field final synthetic p:Lcom/google/android/gms/measurement/internal/zzgi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzgi;Lcom/google/android/gms/measurement/internal/zzhl;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/g0;->p:Lcom/google/android/gms/measurement/internal/zzgi;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/g0;->o:Lcom/google/android/gms/measurement/internal/zzhl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g0;->p:Lcom/google/android/gms/measurement/internal/zzgi;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/g0;->o:Lcom/google/android/gms/measurement/internal/zzhl;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgi;->a(Lcom/google/android/gms/measurement/internal/zzgi;Lcom/google/android/gms/measurement/internal/zzhl;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/g0;->p:Lcom/google/android/gms/measurement/internal/zzgi;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/g0;->o:Lcom/google/android/gms/measurement/internal/zzhl;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzhl;->g:Lcom/google/android/gms/internal/measurement/zzcl;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgi;->h(Lcom/google/android/gms/internal/measurement/zzcl;)V

    return-void
.end method
