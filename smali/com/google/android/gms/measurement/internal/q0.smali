###### Class com.google.android.gms.measurement.internal.q0 (com.google.android.gms.measurement.internal.q0)
.class final Lcom/google/android/gms/measurement/internal/q0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@20.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/measurement/internal/zzav;

.field final synthetic p:Lcom/google/android/gms/measurement/internal/zzp;

.field final synthetic q:Lcom/google/android/gms/measurement/internal/zzha;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzha;Lcom/google/android/gms/measurement/internal/zzav;Lcom/google/android/gms/measurement/internal/zzp;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/q0;->q:Lcom/google/android/gms/measurement/internal/zzha;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/q0;->o:Lcom/google/android/gms/measurement/internal/zzav;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/q0;->p:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/q0;->q:Lcom/google/android/gms/measurement/internal/zzha;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q0;->o:Lcom/google/android/gms/measurement/internal/zzav;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/q0;->p:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzha;->t1(Lcom/google/android/gms/measurement/internal/zzav;Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/q0;->q:Lcom/google/android/gms/measurement/internal/zzha;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/q0;->p:Lcom/google/android/gms/measurement/internal/zzp;

    .line 2
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzha;->A9(Lcom/google/android/gms/measurement/internal/zzav;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void
.end method
