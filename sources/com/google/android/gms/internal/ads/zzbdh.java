package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Iterator;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzbdh extends RelativeLayout {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final float[] f10638p = {5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private AnimationDrawable f10639o;

    public zzbdh(Context context, zzbdg zzbdgVar, RelativeLayout.LayoutParams layoutParams) {
        super(context);
        Preconditions.k(zzbdgVar);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(f10638p, null, null));
        shapeDrawable.getPaint().setColor(zzbdgVar.d());
        setLayoutParams(layoutParams);
        setBackground(shapeDrawable);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        if (!TextUtils.isEmpty(zzbdgVar.e())) {
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            TextView textView = new TextView(context);
            textView.setLayoutParams(layoutParams3);
            textView.setId(1195835393);
            textView.setTypeface(Typeface.DEFAULT);
            textView.setText(zzbdgVar.e());
            textView.setTextColor(zzbdgVar.b());
            textView.setTextSize(zzbdgVar.Ta());
            com.google.android.gms.ads.internal.client.zzay.b();
            int iD = zzbyt.D(context, 4);
            com.google.android.gms.ads.internal.client.zzay.b();
            textView.setPadding(iD, 0, zzbyt.D(context, 4), 0);
            addView(textView);
            layoutParams2.addRule(1, textView.getId());
        }
        ImageView imageView = new ImageView(context);
        imageView.setLayoutParams(layoutParams2);
        imageView.setId(1195835394);
        List listUa = zzbdgVar.Ua();
        if (listUa != null && listUa.size() > 1) {
            this.f10639o = new AnimationDrawable();
            Iterator it = listUa.iterator();
            while (it.hasNext()) {
                try {
                    this.f10639o.addFrame((Drawable) ObjectWrapper.t1(((zzbdj) it.next()).c()), zzbdgVar.zzb());
                } catch (Exception e10) {
                    zzbza.e("Error while getting drawable.", e10);
                }
            }
            imageView.setBackground(this.f10639o);
        } else if (listUa.size() == 1) {
            try {
                imageView.setImageDrawable((Drawable) ObjectWrapper.t1(((zzbdj) listUa.get(0)).c()));
            } catch (Exception e11) {
                zzbza.e("Error while getting drawable.", e11);
            }
        }
        addView(imageView);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        AnimationDrawable animationDrawable = this.f10639o;
        if (animationDrawable != null) {
            animationDrawable.start();
        }
        super.onAttachedToWindow();
    }
}
