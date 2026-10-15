###### Class com.twitter.sdk.android.core.identity.d (com.twitter.sdk.android.core.identity.d)
.class Lcom/twitter/sdk/android/core/identity/d;
.super Ljava/lang/Exception;
.source "WebViewException.java"


# static fields
.field private static final serialVersionUID:J = -0x66a899cb7ec52143L


# instance fields
.field private final o:I

.field private final p:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    iput p1, p0, Lcom/twitter/sdk/android/core/identity/d;->o:I

    .line 3
    iput-object p3, p0, Lcom/twitter/sdk/android/core/identity/d;->p:Ljava/lang/String;

    return-void
.end method
