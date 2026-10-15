###### Class com.twitter.sdk.android.tweetcomposer.internal.util.ObservableScrollView (com.twitter.sdk.android.tweetcomposer.internal.util.ObservableScrollView)
.class public Lcom/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView;
.super Landroid/widget/ScrollView;
.source "ObservableScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView$a;
    }
.end annotation


# instance fields
.field o:Lcom/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .registers 5

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 2
    iget-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView;->o:Lcom/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView$a;

    if-eqz p1, :cond_a

    .line 3
    invoke-interface {p1, p2}, Lcom/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView$a;->a(I)V

    :cond_a
    return-void
.end method

.method public setScrollViewListener(Lcom/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView$a;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView;->o:Lcom/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView$a;

    return-void
.end method

###### Class com.twitter.sdk.android.tweetcomposer.internal.util.ObservableScrollView.a (com.twitter.sdk.android.tweetcomposer.internal.util.ObservableScrollView$a)
.class public interface abstract Lcom/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView$a;
.super Ljava/lang/Object;
.source "ObservableScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(I)V
.end method
