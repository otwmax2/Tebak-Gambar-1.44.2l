package com.android.volley.toolbox;

import android.graphics.Bitmap;
import android.os.Handler;
import android.widget.ImageView;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ImageLoader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RequestQueue f5205a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f5206b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ImageCache f5207c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashMap<String, BatchedImageRequest> f5208d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final HashMap<String, BatchedImageRequest> f5209e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Handler f5210f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Runnable f5211g;

    /* JADX INFO: renamed from: com.android.volley.toolbox.ImageLoader$1, reason: invalid class name */
    class AnonymousClass1 implements ImageListener {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ int f5212o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ ImageView f5213p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ int f5214q;

        @Override // com.android.volley.toolbox.ImageLoader.ImageListener
        public void a(ImageContainer imageContainer, boolean z10) {
            if (imageContainer.d() != null) {
                this.f5213p.setImageBitmap(imageContainer.d());
                return;
            }
            int i10 = this.f5214q;
            if (i10 != 0) {
                this.f5213p.setImageResource(i10);
            }
        }

        @Override // com.android.volley.Response.ErrorListener
        public void c(VolleyError volleyError) {
            int i10 = this.f5212o;
            if (i10 != 0) {
                this.f5213p.setImageResource(i10);
            }
        }
    }

    private static class BatchedImageRequest {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Request<?> f5220a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Bitmap f5221b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private VolleyError f5222c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final List<ImageContainer> f5223d;

        public BatchedImageRequest(Request<?> request, ImageContainer imageContainer) {
            ArrayList arrayList = new ArrayList();
            this.f5223d = arrayList;
            this.f5220a = request;
            arrayList.add(imageContainer);
        }

        public void d(ImageContainer imageContainer) {
            this.f5223d.add(imageContainer);
        }

        public VolleyError e() {
            return this.f5222c;
        }

        public boolean f(ImageContainer imageContainer) {
            this.f5223d.remove(imageContainer);
            if (this.f5223d.size() != 0) {
                return false;
            }
            this.f5220a.f();
            return true;
        }

        public void g(VolleyError volleyError) {
            this.f5222c = volleyError;
        }
    }

    public interface ImageCache {
        Bitmap a(String str);

        void b(String str, Bitmap bitmap);
    }

    public class ImageContainer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Bitmap f5224a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ImageListener f5225b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f5226c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f5227d;

        public ImageContainer(Bitmap bitmap, String str, String str2, ImageListener imageListener) {
            this.f5224a = bitmap;
            this.f5227d = str;
            this.f5226c = str2;
            this.f5225b = imageListener;
        }

        public void c() {
            Threads.a();
            if (this.f5225b == null) {
                return;
            }
            BatchedImageRequest batchedImageRequest = (BatchedImageRequest) ImageLoader.this.f5208d.get(this.f5226c);
            if (batchedImageRequest != null) {
                if (batchedImageRequest.f(this)) {
                    ImageLoader.this.f5208d.remove(this.f5226c);
                    return;
                }
                return;
            }
            BatchedImageRequest batchedImageRequest2 = (BatchedImageRequest) ImageLoader.this.f5209e.get(this.f5226c);
            if (batchedImageRequest2 != null) {
                batchedImageRequest2.f(this);
                if (batchedImageRequest2.f5223d.size() == 0) {
                    ImageLoader.this.f5209e.remove(this.f5226c);
                }
            }
        }

        public Bitmap d() {
            return this.f5224a;
        }

        public String e() {
            return this.f5227d;
        }
    }

    public interface ImageListener extends Response.ErrorListener {
        void a(ImageContainer imageContainer, boolean z10);
    }

    private void d(String str, BatchedImageRequest batchedImageRequest) {
        this.f5209e.put(str, batchedImageRequest);
        if (this.f5211g == null) {
            Runnable runnable = new Runnable() { // from class: com.android.volley.toolbox.ImageLoader.4
                @Override // java.lang.Runnable
                public void run() {
                    for (BatchedImageRequest batchedImageRequest2 : ImageLoader.this.f5209e.values()) {
                        for (ImageContainer imageContainer : batchedImageRequest2.f5223d) {
                            if (imageContainer.f5225b != null) {
                                if (batchedImageRequest2.e() == null) {
                                    imageContainer.f5224a = batchedImageRequest2.f5221b;
                                    imageContainer.f5225b.a(imageContainer, false);
                                } else {
                                    imageContainer.f5225b.c(batchedImageRequest2.e());
                                }
                            }
                        }
                    }
                    ImageLoader.this.f5209e.clear();
                    ImageLoader.this.f5211g = null;
                }
            };
            this.f5211g = runnable;
            this.f5210f.postDelayed(runnable, this.f5206b);
        }
    }

    private static String f(String str, int i10, int i11, ImageView.ScaleType scaleType) {
        StringBuilder sb = new StringBuilder(str.length() + 12);
        sb.append("#W");
        sb.append(i10);
        sb.append("#H");
        sb.append(i11);
        sb.append("#S");
        sb.append(scaleType.ordinal());
        sb.append(str);
        return sb.toString();
    }

    public ImageContainer e(String str, ImageListener imageListener, int i10, int i11, ImageView.ScaleType scaleType) {
        Threads.a();
        String strF = f(str, i10, i11, scaleType);
        Bitmap bitmapA = this.f5207c.a(strF);
        if (bitmapA != null) {
            ImageContainer imageContainer = new ImageContainer(bitmapA, str, null, null);
            imageListener.a(imageContainer, true);
            return imageContainer;
        }
        ImageContainer imageContainer2 = new ImageContainer(null, str, strF, imageListener);
        imageListener.a(imageContainer2, true);
        BatchedImageRequest batchedImageRequest = this.f5208d.get(strF);
        if (batchedImageRequest == null) {
            batchedImageRequest = this.f5209e.get(strF);
        }
        if (batchedImageRequest != null) {
            batchedImageRequest.d(imageContainer2);
            return imageContainer2;
        }
        Request<Bitmap> requestG = g(str, i10, i11, scaleType, strF);
        this.f5205a.a(requestG);
        this.f5208d.put(strF, new BatchedImageRequest(requestG, imageContainer2));
        return imageContainer2;
    }

    protected Request<Bitmap> g(String str, int i10, int i11, ImageView.ScaleType scaleType, final String str2) {
        return new ImageRequest(str, new Response.Listener<Bitmap>() { // from class: com.android.volley.toolbox.ImageLoader.2
            @Override // com.android.volley.Response.Listener
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void b(Bitmap bitmap) {
                ImageLoader.this.i(str2, bitmap);
            }
        }, i10, i11, scaleType, Bitmap.Config.RGB_565, new Response.ErrorListener() { // from class: com.android.volley.toolbox.ImageLoader.3
            @Override // com.android.volley.Response.ErrorListener
            public void c(VolleyError volleyError) {
                ImageLoader.this.h(str2, volleyError);
            }
        });
    }

    protected void h(String str, VolleyError volleyError) {
        BatchedImageRequest batchedImageRequestRemove = this.f5208d.remove(str);
        if (batchedImageRequestRemove != null) {
            batchedImageRequestRemove.g(volleyError);
            d(str, batchedImageRequestRemove);
        }
    }

    protected void i(String str, Bitmap bitmap) {
        this.f5207c.b(str, bitmap);
        BatchedImageRequest batchedImageRequestRemove = this.f5208d.remove(str);
        if (batchedImageRequestRemove != null) {
            batchedImageRequestRemove.f5221b = bitmap;
            d(str, batchedImageRequestRemove);
        }
    }
}
