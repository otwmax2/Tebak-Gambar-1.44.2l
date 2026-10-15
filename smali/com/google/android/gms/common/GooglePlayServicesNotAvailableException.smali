###### Class com.google.android.gms.common.GooglePlayServicesNotAvailableException (com.google.android.gms.common.GooglePlayServicesNotAvailableException)
.class public final Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
.super Ljava/lang/Exception;
.source "com.google.android.gms:play-services-basement@@18.1.0"


# instance fields
.field public final o:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->o:I

    return-void
.end method
