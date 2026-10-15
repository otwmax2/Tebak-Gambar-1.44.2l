###### Class com.google.android.gms.internal.firebase_auth.zzkx (com.google.android.gms.internal.firebase_auth.zzkx)
.class public final Lcom/google/android/gms/internal/firebase_auth/zzkx;
.super Ljava/lang/RuntimeException;
.source "com.google.firebase:firebase-auth@@19.3.1"


# instance fields
.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase_auth/zzjn;)V
    .registers 2

    const-string p1, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzkx;->o:Ljava/util/List;

    return-void
.end method
