###### Class com.facebook.internal.DialogFeature (com.facebook.internal.DialogFeature)
.class public interface abstract Lcom/facebook/internal/DialogFeature;
.super Ljava/lang/Object;
.source "DialogFeature.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/DialogFeature$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract getAction()Ljava/lang/String;
.end method

.method public abstract getMinVersion()I
.end method

.method public abstract name()Ljava/lang/String;
.end method

###### Class com.facebook.internal.DialogFeature.DefaultImpls (com.facebook.internal.DialogFeature$DefaultImpls)
.class public final Lcom/facebook/internal/DialogFeature$DefaultImpls;
.super Ljava/lang/Object;
.source "DialogFeature.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/DialogFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic name$annotations()V
    .registers 0

    return-void
.end method
