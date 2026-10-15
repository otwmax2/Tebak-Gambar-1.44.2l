###### Class com.vungle.warren.ui.JavascriptBridge (com.vungle.warren.ui.JavascriptBridge)
.class public Lcom/vungle/warren/ui/JavascriptBridge;
.super Ljava/lang/Object;
.source "JavascriptBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/ui/JavascriptBridge$MraidHandler;
    }
.end annotation


# instance fields
.field private a:Lcom/vungle/warren/ui/JavascriptBridge$MraidHandler;


# direct methods
.method public constructor <init>(Lcom/vungle/warren/ui/JavascriptBridge$MraidHandler;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/ui/JavascriptBridge;->a:Lcom/vungle/warren/ui/JavascriptBridge$MraidHandler;

    return-void
.end method


# virtual methods
.method public performAction(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "actionClicked("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JavascriptBridge"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/JavascriptBridge;->a:Lcom/vungle/warren/ui/JavascriptBridge$MraidHandler;

    invoke-interface {v0, p1}, Lcom/vungle/warren/ui/JavascriptBridge$MraidHandler;->onMraidAction(Ljava/lang/String;)V

    return-void
.end method

###### Class com.vungle.warren.ui.JavascriptBridge.MraidHandler (com.vungle.warren.ui.JavascriptBridge$MraidHandler)
.class public interface abstract Lcom/vungle/warren/ui/JavascriptBridge$MraidHandler;
.super Ljava/lang/Object;
.source "JavascriptBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ui/JavascriptBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MraidHandler"
.end annotation


# static fields
.field public static final CLOSE_ACTION:Ljava/lang/String; = "close"

.field public static final DOWNLOAD_ACTION:Ljava/lang/String; = "download"

.field public static final PRIVACY_ACTION:Ljava/lang/String; = "privacy"


# virtual methods
.method public abstract onMraidAction(Ljava/lang/String;)V
.end method
