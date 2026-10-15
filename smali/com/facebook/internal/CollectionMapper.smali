###### Class com.facebook.internal.CollectionMapper (com.facebook.internal.CollectionMapper)
.class public Lcom/facebook/internal/CollectionMapper;
.super Ljava/lang/Object;
.source "CollectionMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/CollectionMapper$Collection;,
        Lcom/facebook/internal/CollectionMapper$ValueMapper;,
        Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;,
        Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;,
        Lcom/facebook/internal/CollectionMapper$OnErrorListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static iterate(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$ValueMapper;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/internal/CollectionMapper$Collection<",
            "TT;>;",
            "Lcom/facebook/internal/CollectionMapper$ValueMapper;",
            "Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/internal/Mutable;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lcom/facebook/internal/Mutable;-><init>(Ljava/lang/Object;)V

    .line 2
    new-instance v1, Lcom/facebook/internal/Mutable;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/facebook/internal/Mutable;-><init>(Ljava/lang/Object;)V

    .line 3
    new-instance v3, Lcom/facebook/internal/CollectionMapper$1;

    invoke-direct {v3, v0, v1, p2}, Lcom/facebook/internal/CollectionMapper$1;-><init>(Lcom/facebook/internal/Mutable;Lcom/facebook/internal/Mutable;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V

    .line 4
    invoke-interface {p0}, Lcom/facebook/internal/CollectionMapper$Collection;->keyIterator()Ljava/util/Iterator;

    move-result-object p2

    .line 5
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 6
    :goto_1f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 7
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 8
    :cond_2d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_31
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 9
    invoke-interface {p0, v0}, Lcom/facebook/internal/CollectionMapper$Collection;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 10
    new-instance v5, Lcom/facebook/internal/CollectionMapper$2;

    invoke-direct {v5, p0, v0, v3}, Lcom/facebook/internal/CollectionMapper$2;-><init>(Lcom/facebook/internal/CollectionMapper$Collection;Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V

    .line 11
    iget-object v0, v1, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    .line 12
    invoke-interface {p1, v4, v5}, Lcom/facebook/internal/CollectionMapper$ValueMapper;->mapValue(Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    goto :goto_31

    .line 13
    :cond_5a
    invoke-interface {v3}, Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;->onComplete()V

    return-void
.end method

###### Class com.facebook.internal.CollectionMapper.AnonymousClass1 (com.facebook.internal.CollectionMapper$1)
.class final Lcom/facebook/internal/CollectionMapper$1;
.super Ljava/lang/Object;
.source "CollectionMapper.java"

# interfaces
.implements Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/CollectionMapper;->iterate(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$ValueMapper;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$didReturnError:Lcom/facebook/internal/Mutable;

.field final synthetic val$onMapperCompleteListener:Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;

.field final synthetic val$pendingJobCount:Lcom/facebook/internal/Mutable;


# direct methods
.method constructor <init>(Lcom/facebook/internal/Mutable;Lcom/facebook/internal/Mutable;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/facebook/internal/CollectionMapper$1;->val$didReturnError:Lcom/facebook/internal/Mutable;

    iput-object p2, p0, Lcom/facebook/internal/CollectionMapper$1;->val$pendingJobCount:Lcom/facebook/internal/Mutable;

    iput-object p3, p0, Lcom/facebook/internal/CollectionMapper$1;->val$onMapperCompleteListener:Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/CollectionMapper$1;->val$didReturnError:Lcom/facebook/internal/Mutable;

    iget-object v0, v0, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 2
    :cond_d
    iget-object v0, p0, Lcom/facebook/internal/CollectionMapper$1;->val$pendingJobCount:Lcom/facebook/internal/Mutable;

    iget-object v1, v0, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2a

    .line 3
    iget-object v0, p0, Lcom/facebook/internal/CollectionMapper$1;->val$onMapperCompleteListener:Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;

    invoke-interface {v0}, Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;->onComplete()V

    :cond_2a
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/CollectionMapper$1;->val$didReturnError:Lcom/facebook/internal/Mutable;

    iget-object v0, v0, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 2
    :cond_d
    iget-object v0, p0, Lcom/facebook/internal/CollectionMapper$1;->val$didReturnError:Lcom/facebook/internal/Mutable;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/facebook/internal/CollectionMapper$1;->val$onMapperCompleteListener:Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;

    invoke-interface {v0, p1}, Lcom/facebook/internal/CollectionMapper$OnErrorListener;->onError(Lcom/facebook/FacebookException;)V

    return-void
.end method

###### Class com.facebook.internal.CollectionMapper.AnonymousClass2 (com.facebook.internal.CollectionMapper$2)
.class final Lcom/facebook/internal/CollectionMapper$2;
.super Ljava/lang/Object;
.source "CollectionMapper.java"

# interfaces
.implements Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/CollectionMapper;->iterate(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$ValueMapper;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$collection:Lcom/facebook/internal/CollectionMapper$Collection;

.field final synthetic val$jobCompleteListener:Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;

.field final synthetic val$key:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/facebook/internal/CollectionMapper$Collection;Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/facebook/internal/CollectionMapper$2;->val$collection:Lcom/facebook/internal/CollectionMapper$Collection;

    iput-object p2, p0, Lcom/facebook/internal/CollectionMapper$2;->val$key:Ljava/lang/Object;

    iput-object p3, p0, Lcom/facebook/internal/CollectionMapper$2;->val$jobCompleteListener:Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/CollectionMapper$2;->val$collection:Lcom/facebook/internal/CollectionMapper$Collection;

    iget-object v1, p0, Lcom/facebook/internal/CollectionMapper$2;->val$key:Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/internal/CollectionMapper$2;->val$jobCompleteListener:Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;

    invoke-interface {v0, v1, p1, v2}, Lcom/facebook/internal/CollectionMapper$Collection;->set(Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnErrorListener;)V

    .line 2
    iget-object p1, p0, Lcom/facebook/internal/CollectionMapper$2;->val$jobCompleteListener:Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;

    invoke-interface {p1}, Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;->onComplete()V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/CollectionMapper$2;->val$jobCompleteListener:Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;

    invoke-interface {v0, p1}, Lcom/facebook/internal/CollectionMapper$OnErrorListener;->onError(Lcom/facebook/FacebookException;)V

    return-void
.end method

###### Class com.facebook.internal.CollectionMapper.Collection (com.facebook.internal.CollectionMapper$Collection)
.class public interface abstract Lcom/facebook/internal/CollectionMapper$Collection;
.super Ljava/lang/Object;
.source "CollectionMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/CollectionMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Collection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract keyIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract set(Ljava/lang/Object;Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnErrorListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "Lcom/facebook/internal/CollectionMapper$OnErrorListener;",
            ")V"
        }
    .end annotation
.end method

###### Class com.facebook.internal.CollectionMapper.OnErrorListener (com.facebook.internal.CollectionMapper$OnErrorListener)
.class public interface abstract Lcom/facebook/internal/CollectionMapper$OnErrorListener;
.super Ljava/lang/Object;
.source "CollectionMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/CollectionMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnErrorListener"
.end annotation


# virtual methods
.method public abstract onError(Lcom/facebook/FacebookException;)V
.end method

###### Class com.facebook.internal.CollectionMapper.OnMapValueCompleteListener (com.facebook.internal.CollectionMapper$OnMapValueCompleteListener)
.class public interface abstract Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;
.super Ljava/lang/Object;
.source "CollectionMapper.java"

# interfaces
.implements Lcom/facebook/internal/CollectionMapper$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/CollectionMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMapValueCompleteListener"
.end annotation


# virtual methods
.method public abstract onComplete(Ljava/lang/Object;)V
.end method

###### Class com.facebook.internal.CollectionMapper.OnMapperCompleteListener (com.facebook.internal.CollectionMapper$OnMapperCompleteListener)
.class public interface abstract Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;
.super Ljava/lang/Object;
.source "CollectionMapper.java"

# interfaces
.implements Lcom/facebook/internal/CollectionMapper$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/CollectionMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMapperCompleteListener"
.end annotation


# virtual methods
.method public abstract onComplete()V
.end method

###### Class com.facebook.internal.CollectionMapper.ValueMapper (com.facebook.internal.CollectionMapper$ValueMapper)
.class public interface abstract Lcom/facebook/internal/CollectionMapper$ValueMapper;
.super Ljava/lang/Object;
.source "CollectionMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/CollectionMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ValueMapper"
.end annotation


# virtual methods
.method public abstract mapValue(Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
.end method
