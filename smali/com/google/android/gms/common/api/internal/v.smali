###### Class com.google.android.gms.common.api.internal.v (com.google.android.gms.common.api.internal.v)
.class final Lcom/google/android/gms/common/api/internal/v;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic o:I

.field final synthetic p:Lcom/google/android/gms/common/api/internal/zabq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zabq;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/v;->p:Lcom/google/android/gms/common/api/internal/zabq;

    iput p2, p0, Lcom/google/android/gms/common/api/internal/v;->o:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/v;->p:Lcom/google/android/gms/common/api/internal/zabq;

    iget v1, p0, Lcom/google/android/gms/common/api/internal/v;->o:I

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zabq;->x(Lcom/google/android/gms/common/api/internal/zabq;I)V

    return-void
.end method
