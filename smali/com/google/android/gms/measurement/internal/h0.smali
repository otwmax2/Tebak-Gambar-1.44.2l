###### Class com.google.android.gms.measurement.internal.h0 (com.google.android.gms.measurement.internal.h0)
.class final Lcom/google/android/gms/measurement/internal/h0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@20.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/measurement/internal/zzab;

.field final synthetic p:Lcom/google/android/gms/measurement/internal/zzp;

.field final synthetic q:Lcom/google/android/gms/measurement/internal/zzha;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzha;Lcom/google/android/gms/measurement/internal/zzab;Lcom/google/android/gms/measurement/internal/zzp;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/h0;->q:Lcom/google/android/gms/measurement/internal/zzha;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/h0;->o:Lcom/google/android/gms/measurement/internal/zzab;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/h0;->p:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/h0;->q:Lcom/google/android/gms/measurement/internal/zzha;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzha;->Q4(Lcom/google/android/gms/measurement/internal/zzha;)Lcom/google/android/gms/measurement/internal/zzli;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzli;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/h0;->o:Lcom/google/android/gms/measurement/internal/zzab;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzab;->q:Lcom/google/android/gms/measurement/internal/zzll;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzll;->V3()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/h0;->q:Lcom/google/android/gms/measurement/internal/zzha;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzha;->Q4(Lcom/google/android/gms/measurement/internal/zzha;)Lcom/google/android/gms/measurement/internal/zzli;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/h0;->o:Lcom/google/android/gms/measurement/internal/zzab;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/h0;->p:Lcom/google/android/gms/measurement/internal/zzp;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzli;->n(Lcom/google/android/gms/measurement/internal/zzab;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/h0;->q:Lcom/google/android/gms/measurement/internal/zzha;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzha;->Q4(Lcom/google/android/gms/measurement/internal/zzha;)Lcom/google/android/gms/measurement/internal/zzli;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/h0;->o:Lcom/google/android/gms/measurement/internal/zzab;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/h0;->p:Lcom/google/android/gms/measurement/internal/zzp;

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzli;->u(Lcom/google/android/gms/measurement/internal/zzab;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void
.end method
