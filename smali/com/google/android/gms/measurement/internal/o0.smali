###### Class com.google.android.gms.measurement.internal.o0 (com.google.android.gms.measurement.internal.o0)
.class final Lcom/google/android/gms/measurement/internal/o0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@20.1.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:Lcom/google/android/gms/measurement/internal/zzp;

.field final synthetic p:Lcom/google/android/gms/measurement/internal/zzha;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzha;Lcom/google/android/gms/measurement/internal/zzp;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/o0;->p:Lcom/google/android/gms/measurement/internal/zzha;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/o0;->o:Lcom/google/android/gms/measurement/internal/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o0;->p:Lcom/google/android/gms/measurement/internal/zzha;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzha;->Q4(Lcom/google/android/gms/measurement/internal/zzha;)Lcom/google/android/gms/measurement/internal/zzli;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzli;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o0;->p:Lcom/google/android/gms/measurement/internal/zzha;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzha;->Q4(Lcom/google/android/gms/measurement/internal/zzha;)Lcom/google/android/gms/measurement/internal/zzli;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o0;->o:Lcom/google/android/gms/measurement/internal/zzp;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzli;->b()V

    .line 5
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzli;->P(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/c0;

    return-void
.end method
