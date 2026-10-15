###### Class com.google.android.gms.common.internal.d (com.google.android.gms.common.internal.d)
.class final Lcom/google/android/gms/common/internal/d;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;


# instance fields
.field final synthetic o:Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/internal/d;->o:Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final X0(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/d;->o:Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;->X0(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
