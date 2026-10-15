###### Class com.vungle.warren.ui.view.FullAdWidget (com.vungle.warren.ui.view.FullAdWidget)
.class public Lcom/vungle/warren/ui/view/FullAdWidget;
.super Landroid/widget/RelativeLayout;
.source "FullAdWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/ui/view/FullAdWidget$ViewEvent;,
        Lcom/vungle/warren/ui/view/FullAdWidget$AudioContextWrapper;,
        Lcom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;,
        Lcom/vungle/warren/ui/view/FullAdWidget$DestroyRunnable;
    }
.end annotation


# static fields
.field private static final I:Ljava/lang/String;


# instance fields
.field private A:Landroid/media/MediaPlayer$OnErrorListener;

.field private B:Landroid/media/MediaPlayer$OnCompletionListener;

.field private C:I

.field private D:Landroid/view/GestureDetector;

.field private E:Ljava/lang/Runnable;

.field private F:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field G:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private H:Landroid/view/View$OnClickListener;

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Landroid/widget/RelativeLayout$LayoutParams;

.field private final q:Landroid/view/Window;

.field private final r:Landroid/widget/RelativeLayout;

.field private s:Landroid/webkit/WebView;

.field private final t:Landroid/widget/ProgressBar;

.field private final u:Landroid/widget/ImageView;

.field private final v:Landroid/widget/ImageView;

.field public final videoView:Landroid/widget/VideoView;

.field private final w:Landroid/widget/ImageView;

.field private final x:Landroid/widget/ImageView;

.field private y:Lcom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;

.field private z:Landroid/media/MediaPlayer$OnPreparedListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vungle/warren/ui/view/FullAdWidget;->I:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->o:Ljava/util/Map;

    .line 3
    new-instance v0, Lcom/vungle/warren/ui/view/FullAdWidget$2;

    invoke-direct {v0, p0}, Lcom/vungle/warren/ui/view/FullAdWidget$2;-><init>(Lcom/vungle/warren/ui/view/FullAdWidget;)V

    iput-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->F:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 4
    new-instance v0, Lcom/vungle/warren/ui/view/FullAdWidget$7;

    invoke-direct {v0, p0}, Lcom/vungle/warren/ui/view/FullAdWidget$7;-><init>(Lcom/vungle/warren/ui/view/FullAdWidget;)V

    iput-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->G:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 5
    new-instance v0, Lcom/vungle/warren/ui/view/FullAdWidget$8;

    invoke-direct {v0, p0}, Lcom/vungle/warren/ui/view/FullAdWidget$8;-><init>(Lcom/vungle/warren/ui/view/FullAdWidget;)V

    iput-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->H:Landroid/view/View$OnClickListener;

    .line 6
    iput-object p2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->q:Landroid/view/Window;

    .line 7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 8
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->p:Landroid/widget/RelativeLayout$LayoutParams;

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    new-instance v2, Lcom/vungle/warren/ui/view/FullAdWidget$1;

    invoke-direct {v2, p0}, Lcom/vungle/warren/ui/view/FullAdWidget$1;-><init>(Lcom/vungle/warren/ui/view/FullAdWidget;)V

    iput-object v2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->E:Ljava/lang/Runnable;

    .line 11
    new-instance v2, Landroid/widget/VideoView;

    new-instance v3, Lcom/vungle/warren/ui/view/FullAdWidget$AudioContextWrapper;

    invoke-direct {v3, p1}, Lcom/vungle/warren/ui/view/FullAdWidget$AudioContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    .line 12
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    .line 13
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 14
    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-direct {v4, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->r:Landroid/widget/RelativeLayout;

    const-string v5, "videoViewContainer"

    .line 16
    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 17
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    invoke-virtual {v4, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    invoke-virtual {p0, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    new-instance v2, Landroid/view/GestureDetector;

    iget-object v3, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->F:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v2, p1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->D:Landroid/view/GestureDetector;

    .line 21
    invoke-static {p1}, Lcom/vungle/warren/utility/ViewUtility;->getWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v2

    iput-object v2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->s:Landroid/webkit/WebView;

    .line 22
    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    iget-object v2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->s:Landroid/webkit/WebView;

    const-string v3, "webView"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setTag(Ljava/lang/Object;)V

    .line 24
    iget-object v2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->s:Landroid/webkit/WebView;

    invoke-virtual {p0, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v0, p1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->t:Landroid/widget/ProgressBar;

    .line 26
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    const/high16 v4, 0x40800000    # 4.0f

    .line 27
    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 28
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    .line 29
    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 30
    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x64

    .line 31
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    const/4 v2, 0x0

    .line 32
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/4 v2, 0x4

    .line 33
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 34
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 35
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v2, 0x41c00000    # 24.0f

    .line 36
    invoke-static {v3, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 37
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 38
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 v4, 0x41400000    # 12.0f

    .line 39
    invoke-static {v3, v4, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    .line 40
    invoke-virtual {v2, p2, p2, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 41
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->u:Landroid/widget/ImageView;

    .line 42
    sget-object v4, Lcom/vungle/warren/utility/ViewUtility$Asset;->unMute:Lcom/vungle/warren/utility/ViewUtility$Asset;

    invoke-static {v4, p1}, Lcom/vungle/warren/utility/ViewUtility;->getBitmap(Lcom/vungle/warren/utility/ViewUtility$Asset;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 43
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x8

    .line 44
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 46
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47
    invoke-virtual {v3, p2, p2, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 48
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->v:Landroid/widget/ImageView;

    const-string v5, "closeButton"

    .line 49
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 50
    sget-object v5, Lcom/vungle/warren/utility/ViewUtility$Asset;->close:Lcom/vungle/warren/utility/ViewUtility$Asset;

    invoke-static {v5, p1}, Lcom/vungle/warren/utility/ViewUtility;->getBitmap(Lcom/vungle/warren/utility/ViewUtility$Asset;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v5, 0xb

    .line 51
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 55
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 56
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 57
    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 58
    invoke-virtual {v3, p2, p2, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 59
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->w:Landroid/widget/ImageView;

    const-string v5, "ctaOverlay"

    .line 60
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    sget-object v3, Lcom/vungle/warren/utility/ViewUtility$Asset;->cta:Lcom/vungle/warren/utility/ViewUtility$Asset;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/vungle/warren/utility/ViewUtility;->getBitmap(Lcom/vungle/warren/utility/ViewUtility$Asset;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 63
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 65
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 66
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0x9

    .line 67
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 68
    invoke-virtual {v3, p2, p2, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 69
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->x:Landroid/widget/ImageView;

    .line 70
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 73
    invoke-direct {p0}, Lcom/vungle/warren/ui/view/FullAdWidget;->n()V

    .line 74
    invoke-direct {p0}, Lcom/vungle/warren/ui/view/FullAdWidget;->q()V

    return-void
.end method

.method static synthetic a(Lcom/vungle/warren/ui/view/FullAdWidget;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/vungle/warren/ui/view/FullAdWidget;->o()V

    return-void
.end method

.method static synthetic b(Lcom/vungle/warren/ui/view/FullAdWidget;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->r:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic c(Lcom/vungle/warren/ui/view/FullAdWidget;)Lcom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->y:Lcom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;

    return-object p0
.end method

.method static synthetic d(Lcom/vungle/warren/ui/view/FullAdWidget;Landroid/view/View;)I
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/warren/ui/view/FullAdWidget;->p(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/vungle/warren/ui/view/FullAdWidget;)Landroid/view/View$OnClickListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->H:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic f(Lcom/vungle/warren/ui/view/FullAdWidget;)Landroid/view/GestureDetector;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->D:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic g(Lcom/vungle/warren/ui/view/FullAdWidget;)I
    .registers 1

    .line 1
    iget p0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->C:I

    return p0
.end method

.method static synthetic h(Lcom/vungle/warren/ui/view/FullAdWidget;)Landroid/media/MediaPlayer$OnPreparedListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->z:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic i(Lcom/vungle/warren/ui/view/FullAdWidget;)Landroid/widget/ImageView;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->u:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic j(Lcom/vungle/warren/ui/view/FullAdWidget;)Landroid/media/MediaPlayer$OnErrorListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->A:Landroid/media/MediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static synthetic k(Lcom/vungle/warren/ui/view/FullAdWidget;)Landroid/media/MediaPlayer$OnCompletionListener;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->B:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic l(Lcom/vungle/warren/ui/view/FullAdWidget;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/vungle/warren/ui/view/FullAdWidget;->r()V

    return-void
.end method

.method private m(Landroid/view/View;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->o:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->H:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private n()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->v:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/vungle/warren/ui/view/FullAdWidget;->m(Landroid/view/View;I)V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->w:Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/vungle/warren/ui/view/FullAdWidget;->m(Landroid/view/View;I)V

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->u:Landroid/widget/ImageView;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/vungle/warren/ui/view/FullAdWidget;->m(Landroid/view/View;I)V

    .line 4
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->x:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/vungle/warren/ui/view/FullAdWidget;->m(Landroid/view/View;I)V

    .line 5
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->o:Ljava/util/Map;

    iget-object v1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->r:Landroid/widget/RelativeLayout;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->r:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/vungle/warren/ui/view/FullAdWidget$3;

    invoke-direct {v1, p0}, Lcom/vungle/warren/ui/view/FullAdWidget$3;-><init>(Lcom/vungle/warren/ui/view/FullAdWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/vungle/warren/ui/view/FullAdWidget$4;

    invoke-direct {v1, p0}, Lcom/vungle/warren/ui/view/FullAdWidget$4;-><init>(Lcom/vungle/warren/ui/view/FullAdWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 8
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/vungle/warren/ui/view/FullAdWidget$5;

    invoke-direct {v1, p0}, Lcom/vungle/warren/ui/view/FullAdWidget$5;-><init>(Lcom/vungle/warren/ui/view/FullAdWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 9
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    new-instance v1, Lcom/vungle/warren/ui/view/FullAdWidget$6;

    invoke-direct {v1, p0}, Lcom/vungle/warren/ui/view/FullAdWidget$6;-><init>(Lcom/vungle/warren/ui/view/FullAdWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method private o()V
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_25

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->q:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->q:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 4
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->hide(I)V

    const/4 v1, 0x2

    .line 5
    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    goto :goto_30

    .line 6
    :cond_25
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->q:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_30
    :goto_30
    return-void
.end method

.method private p(Landroid/view/View;)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_c

    const/4 p1, -0x1

    goto :goto_10

    .line 2
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_10
    return p1
.end method

.method private q()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->s:Landroid/webkit/WebView;

    const/16 v1, 0x8

    if-eqz v0, :cond_13

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->s:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 4
    :cond_13
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private r()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->G:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public destroyWebView(J)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->s:Landroid/webkit/WebView;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v1, "Android"

    .line 2
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->s:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 4
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->s:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->s:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_2b

    .line 6
    new-instance p1, Lcom/vungle/warren/ui/view/FullAdWidget$DestroyRunnable;

    iget-object p2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->s:Landroid/webkit/WebView;

    invoke-direct {p1, p2}, Lcom/vungle/warren/ui/view/FullAdWidget$DestroyRunnable;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {p1}, Lcom/vungle/warren/ui/view/FullAdWidget$DestroyRunnable;->run()V

    goto :goto_3a

    .line 7
    :cond_2b
    new-instance v0, Lcom/vungle/warren/utility/HandlerScheduler;

    invoke-direct {v0}, Lcom/vungle/warren/utility/HandlerScheduler;-><init>()V

    new-instance v2, Lcom/vungle/warren/ui/view/FullAdWidget$DestroyRunnable;

    iget-object v3, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->s:Landroid/webkit/WebView;

    invoke-direct {v2, v3}, Lcom/vungle/warren/ui/view/FullAdWidget$DestroyRunnable;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v0, v2, p1, p2}, Lcom/vungle/warren/utility/HandlerScheduler;->schedule(Ljava/lang/Runnable;J)V

    .line 8
    :goto_3a
    iput-object v1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->s:Landroid/webkit/WebView;

    return-void
.end method

.method public getCurrentVideoPosition()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->s:Landroid/webkit/WebView;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public getVideoDuration()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    return v0
.end method

.method getWebView()Landroid/webkit/WebView;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->s:Landroid/webkit/WebView;

    return-object v0
.end method

.method public hasWebView()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->s:Landroid/webkit/WebView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isVideoPlaying()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public linkWebView(Landroid/webkit/WebViewClient;Lcom/vungle/warren/ui/JavascriptBridge;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->s:Landroid/webkit/WebView;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    invoke-static {v0}, Lcom/vungle/warren/ui/view/WebSettingsUtils;->applyDefault(Landroid/webkit/WebView;)V

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->s:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 4
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->s:Landroid/webkit/WebView;

    const-string v0, "Android"

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public pausePlayback()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    return-void
.end method

.method public pauseWeb()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->s:Landroid/webkit/WebView;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 3
    :cond_7
    invoke-direct {p0}, Lcom/vungle/warren/ui/view/FullAdWidget;->r()V

    .line 4
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->E:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public playVideo(Landroid/net/Uri;I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->r:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 3
    sget-object p1, Lcom/vungle/warren/utility/ViewUtility$Asset;->privacy:Lcom/vungle/warren/utility/ViewUtility$Asset;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/vungle/warren/utility/ViewUtility;->getBitmap(Lcom/vungle/warren/utility/ViewUtility$Asset;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->x:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->x:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->t:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->t:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 8
    invoke-virtual {p0, p2}, Lcom/vungle/warren/ui/view/FullAdWidget;->startPlayback(I)Z

    return-void
.end method

.method public release(J)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 4
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 5
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->suspend()V

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/vungle/warren/ui/view/FullAdWidget;->destroyWebView(J)V

    return-void
.end method

.method public resumeWeb()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->s:Landroid/webkit/WebView;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 3
    :cond_7
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->E:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCtaEnabled(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->w:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setImmersiveMode()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->G:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public setMuted(Z)V
    .registers 5

    .line 1
    sget-object v0, Lcom/vungle/warren/utility/ViewUtility$Asset;->mute:Lcom/vungle/warren/utility/ViewUtility$Asset;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/warren/utility/ViewUtility;->getBitmap(Lcom/vungle/warren/utility/ViewUtility$Asset;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/vungle/warren/utility/ViewUtility$Asset;->unMute:Lcom/vungle/warren/utility/ViewUtility$Asset;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/warren/utility/ViewUtility;->getBitmap(Lcom/vungle/warren/utility/ViewUtility$Asset;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->u:Landroid/widget/ImageView;

    if-eqz p1, :cond_19

    goto :goto_1a

    :cond_19
    move-object v0, v1

    :goto_1a
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->B:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->A:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnItemClickListener(Lcom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->y:Lcom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;

    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->z:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setProgress(IF)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->t:Landroid/widget/ProgressBar;

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 2
    iget-object p2, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->t:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public showCloseButton(Z)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->v:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public showWebsite(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->s:Landroid/webkit/WebView;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    sget-object v0, Lcom/vungle/warren/ui/view/FullAdWidget;->I:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadJs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->s:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->s:Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->r:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->r:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->t:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->v:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->u:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->w:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->x:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public startPlayback(I)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 3
    iput p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->C:I

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1a

    .line 5
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 6
    :cond_1a
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 7
    :cond_1f
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p1

    return p1
.end method

.method public stopPlayback()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    return-void
.end method

.method public updateWindow()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->q:Landroid/view/Window;

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget;->q:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

###### Class com.vungle.warren.ui.view.FullAdWidget.AnonymousClass1 (com.vungle.warren.ui.view.FullAdWidget$1)
.class Lcom/vungle/warren/ui/view/FullAdWidget$1;
.super Ljava/lang/Object;
.source "FullAdWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/view/FullAdWidget;-><init>(Landroid/content/Context;Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/ui/view/FullAdWidget;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/view/FullAdWidget;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget$1;->o:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget$1;->o:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {v0}, Lcom/vungle/warren/ui/view/FullAdWidget;->a(Lcom/vungle/warren/ui/view/FullAdWidget;)V

    return-void
.end method

###### Class com.vungle.warren.ui.view.FullAdWidget.AnonymousClass2 (com.vungle.warren.ui.view.FullAdWidget$2)
.class Lcom/vungle/warren/ui/view/FullAdWidget$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FullAdWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ui/view/FullAdWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/warren/ui/view/FullAdWidget;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/view/FullAdWidget;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget$2;->a:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget$2;->a:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/FullAdWidget;->e(Lcom/vungle/warren/ui/view/FullAdWidget;)Landroid/view/View$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget$2;->a:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {v0}, Lcom/vungle/warren/ui/view/FullAdWidget;->b(Lcom/vungle/warren/ui/view/FullAdWidget;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method

###### Class com.vungle.warren.ui.view.FullAdWidget.AnonymousClass3 (com.vungle.warren.ui.view.FullAdWidget$3)
.class Lcom/vungle/warren/ui/view/FullAdWidget$3;
.super Ljava/lang/Object;
.source "FullAdWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/view/FullAdWidget;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/ui/view/FullAdWidget;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/view/FullAdWidget;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget$3;->o:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget$3;->o:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/FullAdWidget;->f(Lcom/vungle/warren/ui/view/FullAdWidget;)Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

###### Class com.vungle.warren.ui.view.FullAdWidget.AnonymousClass4 (com.vungle.warren.ui.view.FullAdWidget$4)
.class Lcom/vungle/warren/ui/view/FullAdWidget$4;
.super Ljava/lang/Object;
.source "FullAdWidget.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/view/FullAdWidget;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/ui/view/FullAdWidget;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/view/FullAdWidget;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget$4;->o:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_11

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget$4;->o:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {v0}, Lcom/vungle/warren/ui/view/FullAdWidget;->g(Lcom/vungle/warren/ui/view/FullAdWidget;)I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Landroid/media/MediaPlayer;->seekTo(JI)V

    .line 3
    :cond_11
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget$4;->o:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {v0}, Lcom/vungle/warren/ui/view/FullAdWidget;->h(Lcom/vungle/warren/ui/view/FullAdWidget;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 4
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget$4;->o:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {v0}, Lcom/vungle/warren/ui/view/FullAdWidget;->h(Lcom/vungle/warren/ui/view/FullAdWidget;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 5
    :cond_22
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget$4;->o:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/FullAdWidget;->i(Lcom/vungle/warren/ui/view/FullAdWidget;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

###### Class com.vungle.warren.ui.view.FullAdWidget.AnonymousClass5 (com.vungle.warren.ui.view.FullAdWidget$5)
.class Lcom/vungle/warren/ui/view/FullAdWidget$5;
.super Ljava/lang/Object;
.source "FullAdWidget.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/view/FullAdWidget;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/ui/view/FullAdWidget;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/view/FullAdWidget;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget$5;->o:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget$5;->o:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {v0}, Lcom/vungle/warren/ui/view/FullAdWidget;->j(Lcom/vungle/warren/ui/view/FullAdWidget;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget$5;->o:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {v0}, Lcom/vungle/warren/ui/view/FullAdWidget;->j(Lcom/vungle/warren/ui/view/FullAdWidget;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1

    :cond_13
    const/4 p1, 0x0

    return p1
.end method

###### Class com.vungle.warren.ui.view.FullAdWidget.AnonymousClass6 (com.vungle.warren.ui.view.FullAdWidget$6)
.class Lcom/vungle/warren/ui/view/FullAdWidget$6;
.super Ljava/lang/Object;
.source "FullAdWidget.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/warren/ui/view/FullAdWidget;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/ui/view/FullAdWidget;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/view/FullAdWidget;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget$6;->o:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget$6;->o:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {v0}, Lcom/vungle/warren/ui/view/FullAdWidget;->k(Lcom/vungle/warren/ui/view/FullAdWidget;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget$6;->o:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {v0}, Lcom/vungle/warren/ui/view/FullAdWidget;->k(Lcom/vungle/warren/ui/view/FullAdWidget;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 3
    :cond_11
    iget-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget$6;->o:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {p1}, Lcom/vungle/warren/ui/view/FullAdWidget;->i(Lcom/vungle/warren/ui/view/FullAdWidget;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

###### Class com.vungle.warren.ui.view.FullAdWidget.AnonymousClass7 (com.vungle.warren.ui.view.FullAdWidget$7)
.class Lcom/vungle/warren/ui/view/FullAdWidget$7;
.super Ljava/lang/Object;
.source "FullAdWidget.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ui/view/FullAdWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/ui/view/FullAdWidget;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/view/FullAdWidget;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget$7;->o:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget$7;->o:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {v0}, Lcom/vungle/warren/ui/view/FullAdWidget;->l(Lcom/vungle/warren/ui/view/FullAdWidget;)V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget$7;->o:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {v0}, Lcom/vungle/warren/ui/view/FullAdWidget;->a(Lcom/vungle/warren/ui/view/FullAdWidget;)V

    return-void
.end method

###### Class com.vungle.warren.ui.view.FullAdWidget.AnonymousClass8 (com.vungle.warren.ui.view.FullAdWidget$8)
.class Lcom/vungle/warren/ui/view/FullAdWidget$8;
.super Ljava/lang/Object;
.source "FullAdWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ui/view/FullAdWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lcom/vungle/warren/ui/view/FullAdWidget;


# direct methods
.method constructor <init>(Lcom/vungle/warren/ui/view/FullAdWidget;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget$8;->o:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget$8;->o:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {v0}, Lcom/vungle/warren/ui/view/FullAdWidget;->c(Lcom/vungle/warren/ui/view/FullAdWidget;)Lcom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget$8;->o:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {v0}, Lcom/vungle/warren/ui/view/FullAdWidget;->c(Lcom/vungle/warren/ui/view/FullAdWidget;)Lcom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/warren/ui/view/FullAdWidget$8;->o:Lcom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {v1, p1}, Lcom/vungle/warren/ui/view/FullAdWidget;->d(Lcom/vungle/warren/ui/view/FullAdWidget;Landroid/view/View;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;->onItemClicked(I)V

    :cond_17
    return-void
.end method

###### Class com.vungle.warren.ui.view.FullAdWidget.AudioContextWrapper (com.vungle.warren.ui.view.FullAdWidget$AudioContextWrapper)
.class public Lcom/vungle/warren/ui/view/FullAdWidget$AudioContextWrapper;
.super Landroid/content/ContextWrapper;
.source "FullAdWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ui/view/FullAdWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioContextWrapper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const-string v0, "audio"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_11
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

###### Class com.vungle.warren.ui.view.FullAdWidget.DestroyRunnable (com.vungle.warren.ui.view.FullAdWidget$DestroyRunnable)
.class Lcom/vungle/warren/ui/view/FullAdWidget$DestroyRunnable;
.super Ljava/lang/Object;
.source "FullAdWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ui/view/FullAdWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DestroyRunnable"
.end annotation


# instance fields
.field private o:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/ui/view/FullAdWidget$DestroyRunnable;->o:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget$DestroyRunnable;->o:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 2
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget$DestroyRunnable;->o:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_16

    .line 4
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget$DestroyRunnable;->o:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewRenderProcessClient(Landroid/webkit/WebViewRenderProcessClient;)V

    .line 5
    :cond_16
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget$DestroyRunnable;->o:Landroid/webkit/WebView;

    const-string v2, ""

    invoke-virtual {v0, v2, v1, v1}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/vungle/warren/ui/view/FullAdWidget$DestroyRunnable;->o:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

###### Class com.vungle.warren.ui.view.FullAdWidget.OnItemClickListener (com.vungle.warren.ui.view.FullAdWidget$OnItemClickListener)
.class public interface abstract Lcom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;
.super Ljava/lang/Object;
.source "FullAdWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ui/view/FullAdWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnItemClickListener"
.end annotation


# virtual methods
.method public abstract onItemClicked(I)V
.end method

###### Class com.vungle.warren.ui.view.FullAdWidget.ViewEvent (com.vungle.warren.ui.view.FullAdWidget$ViewEvent)
.class public interface abstract annotation Lcom/vungle/warren/ui/view/FullAdWidget$ViewEvent;
.super Ljava/lang/Object;
.source "FullAdWidget.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/ui/view/FullAdWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ViewEvent"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final CLOSE_CLICK:I = 0x1

.field public static final CTA_CLICK:I = 0x2

.field public static final MUTE_CLICK:I = 0x3

.field public static final PRIVACY_CLICK:I = 0x4

.field public static final VIDEO_CLICK:I = 0x5
