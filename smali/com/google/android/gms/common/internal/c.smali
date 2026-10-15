###### Class com.google.android.gms.common.internal.c (com.google.android.gms.common.internal.c)
.class final Lcom/google/android/gms/common/internal/c;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;


# instance fields
.field final synthetic o:Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/c;->o:Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final P0(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->o:Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;->P0(I)V

    return-void
.end method

.method public final t1(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c;->o:Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;->t1(Landroid/os/Bundle;)V

    return-void
.end method
